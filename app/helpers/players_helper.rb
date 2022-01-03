module PlayersHelper
  def get_players_path
    if params[:controller].starts_with?('jquery')
      jquery_players_path
    elsif params[:controller].starts_with?('poj')
      poj_players_path
    elsif params[:controller].starts_with?('react_on_rails')
      react_on_rails_players_path
    elsif params[:controller].starts_with?('tb')
      tb_players_path
    else
      players_path
    end
  end

  def get_player_path(player)
    if params[:controller].starts_with?('jquery')
      jquery_player_path(player.id)
    elsif params[:controller].starts_with?('poj')
      poj_player_path(player.id)
    elsif params[:controller].starts_with?('react_on_rails')
      react_on_rails_player_path(player.id)
    elsif params[:controller].starts_with?('tb')
      tb_player_path(player.id)
    else
      player_path(player.id)
    end
  end

  def get_edit_player_path(player)
    if params[:controller].starts_with?('jquery')
      edit_jquery_player_path(player.id)
    elsif params[:controller].starts_with?('poj')
      edit_poj_player_path(player.id)
    elsif params[:controller].starts_with?('react_on_rails')
      edit_react_on_rails_player_path(player.id)
    elsif params[:controller].starts_with?('tb')
      edit_tb_player_path(player.id)
    else
      edit_player_path(player.id)
    end
  end

  def get_new_player_path
    if params[:controller].starts_with?('jquery')
      new_jquery_player_path
    elsif params[:controller].starts_with?('poj')
      new_poj_player_path
    elsif params[:controller].starts_with?('react_on_rails')
      new_react_on_rails_player_path
    elsif params[:controller].starts_with?('tb')
      new_tb_player_path
    else
      new_player_path
    end
  end

  def get_search_players_path
    if params[:controller].starts_with?('jquery')
      search_jquery_players_path
    elsif params[:controller].starts_with?('poj')
      search_poj_players_path
    elsif params[:controller].starts_with?('react_on_rails')
      search_react_on_rails_players_path
    elsif params[:controller].starts_with?('tb')
      search_tb_players_path
    else
      search_players_path
    end
  end

  def get_page_title
    if params[:controller].starts_with?('jquery')
      "jQuery as Turbo"
    elsif params[:controller].starts_with?('poj')
      "Plain Old Javascript as Turbo"
    elsif params[:controller].starts_with?('react_on_rails')
      "React on Rails"
    elsif params[:controller].starts_with?('tb')
      "Turbo"
    else
      "Rails Scaffold"
    end
  end

end
