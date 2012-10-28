<%= form_for(@product, html: { class: 'form-horizontal' } ) do |f| %>
  <% if @product.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@product.errors.count, "error") %> prohibited this product from being saved:</h2>

      <ul>
      <% @product.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

<div class="control-group">
  <%= f.label :title,
              class: 'control-label' %>
  <div class="controls">
    <%= f.text_field :title %>
  </div>
</div>
<div class="control-group">
  <%= f.label :group_id,
              class: 'control-label' %>
  <div class="controls">
    <%= f.collection_select :group_id, @groups, :id, :name %>
    <%= link_to "Create group", new_group_path, class: "btn btn-danger" %>
  </div>
</div>
<div class="form-actions">
  <%= f.submit class: "btn btn-primary" %>
</div>
<% end %>