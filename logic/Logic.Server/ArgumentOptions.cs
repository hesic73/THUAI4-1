﻿using CommandLine;

namespace Logic.Server
{
	static class DefaultArgumentOptions
	{
		public static string FileName = "枫哥最帅";		// An impossible name of the playback file to indicate -f is not sepcified.
		public static string Token = "枫哥最帅";         // An impossible name of the token to indicate -f is not sepcified.
	}

	class ArgumentOptions
	{
		[Option('k', "token", Required = false, HelpText = "Web API Token")]
		public string Token { get; set; } = DefaultArgumentOptions.Token;

		[Option('p', "port", Required = true, HelpText = "Server listening port")]
		public ushort ServerPort { get; set; } = 10086;

		[Option('t', "teamCount", Required = false, HelpText = "The number of teams, 1 by defualt")]
		public ushort TeamCount { get; set; } = 1;

		[Option('c', "playerCount", Required = false, HelpText = "The number of players per team, 1 by default")]
		public ushort PlayerCountPerTeam { get; set; } = 1;

		[Option('g', "gameTimeInSecond", Required = false, HelpText = "The time of the game in second, 10 minutes by default")]
		public uint GameTimeInSecond { get; set; } = 10 * 60;

		[Option('f', "fileName", Required = false, HelpText = "The file to store playback file or to read file.")]
		public string FileName { get; set; } = DefaultArgumentOptions.FileName;

		[Option('b', "playBack", Required = false, HelpText = "Whether open the server in a playback mode.")]
		public bool PlayBack { get; set; } = false;
	}
}
