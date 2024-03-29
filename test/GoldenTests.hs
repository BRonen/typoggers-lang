module GoldenTests (tests) where

import Checker (checker)
import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString.Lazy.UTF8 as BLU
import Lexer (lexer)
import Parser (parse, E (..))
import System.FilePath (replaceExtension, takeBaseName)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.Golden (findByExtension, goldenVsString)

tests :: IO TestTree
tests = do
  pogFiles <- findByExtension [".pog"] "./test/snapshots"
  return $ testGroup "Golden tests" $ map genGoldenTest pogFiles

genGoldenTest :: FilePath -> TestTree
genGoldenTest pogFile =
  goldenVsString
    (takeBaseName pogFile)
    goldenFile
    (generateOutput =<< contentPog)
  where
    contentPog = BL.readFile pogFile
    goldenFile = replaceExtension pogFile ".output"

generateOutput :: BL.ByteString -> IO BL.ByteString
generateOutput contentPog = do
  let tokens = lexer $ BLU.toString contentPog
  let lexerResult = "tokens:\n\n" ++ show tokens
  let ast = parse tokens
  case ast of
    Ok ast' -> do
      let parserResult = "\n\nast:\n\n" ++ show ast'
      let typecheckResult = case checker ast' of
            Right typecheck' -> "\n\ntype:\n\n" ++ show typecheck'
            Left err -> "\n\ncheck err:\n\n" ++ show err
      pure $
        BLU.fromString $
          concat
            [ lexerResult,
              parserResult,
              typecheckResult,
              "\n"
            ]
    Failed err -> do
      pure $
        BLU.fromString $
          concat
            [ lexerResult,
              "\n\nparser err:\n\n" ++ err,
              "\n"
            ]
