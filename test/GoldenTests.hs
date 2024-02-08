module GoldenTests (tests) where

import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString.Lazy.UTF8 as BLU

import System.FilePath (replaceExtension, takeBaseName)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.Golden (findByExtension, goldenVsString)

import Lexer (lexer)
import Parser (parse)
import Checker (checker)

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
  let ast = parse tokens
  let typecheck = checker ast
  pure $ BLU.fromString $ concat $ case typecheck of
    Right typecheck' -> [
        "tokens:\n\n",
        show tokens,
        "\n\nast:\n\n",
        show ast,
        "\n\ntype:\n\n",
        show typecheck',
        "\n"
      ]
    Left err -> [
        "tokens:\n\n",
        show tokens,
        "\n\nast:\n\n",
        show ast,
        "\n\ncheck err:\n\n",
        show err,
        "\n"
      ]