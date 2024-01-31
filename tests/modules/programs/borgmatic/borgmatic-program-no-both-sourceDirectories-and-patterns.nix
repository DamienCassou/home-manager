{ ... }:

{
  test.asserts.assertions.expected = [
    ''
      The borgmatic configuration "main" can't specify both location.sourceDirectories and location.patterns''
  ];

  programs.borgmatic = {
    enable = true;
    backups = {
      main = {
        location = {
          sourceDirectories = [ "/my-stuff-to-backup" ];
          patterns = [ "/something" ];
          repositories = [ "/backups" ];
        };
      };
    };
  };

  test.stubs.borgmatic = { };
}
