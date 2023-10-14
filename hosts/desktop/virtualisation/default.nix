{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "vaibhav" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
