Rails Guide (as written by AB)
=

***

**Adding Gems**

- First, check out [RubyGems.org](http://www.rubygems.org) and search for whatever gem you want to use. The most current version number will be displayed.

- In the root dir of your app, edit the Gemfile to add the name of the gem and the version number, if necessary:

    ```ruby
    'bootstrap', '~> 3.0.0'
    ```

    (the `~>` indicates the _lowest_ version to use. It will not upgrade automatically to v.4, in case new features would break your app)

***

**Migrations**

When you need to add a new column to your database, run the command `$rails generate migration AddColumnNameToDatabaseName ColumnName:data_type`, then run `$rake db:migrate`

`data_type` can be set to `string`, `text`, `integer`, and `boolean` as far as I know. There are probably more.

You can view the new migration in appName/db/migrate.

You can also view the current status of your migrations by running `$rake db:migrate:status`. You should see most (if not all) migrations categorized as `up`. If any are `down`, it indicates that particular migration is not being used.

If you need to remove a migration, first run `$rake db:migrate:status` to check which Migration ID you want to rollback to. Then run `$rake db:migrate:down VERSION=id_number`, where id_number is where you want to rollback to. Then, navigate to db/migrate and physically delete the migrations you no longer need. Then run `$rake db:migrate` again.

To pull something out of the database, you can use ERB such as `<%= @controller_object.column_name %>`

**NOTE:** If you are using a form to collect data, Rails uses _strong parameters_, that is, you must update Rails' whitelist to allow data to be added to the database, e.g.:

- if you have a migration called `name`, open the controller associated with your database and edit the `params` function at the bottom, to include `permit(:form_field1, :form_field2)`

***

**Controllers**

To add a new controller to your app, just run `$rails generate controller Controller_Name action1 action2`, where `action1` and `action2` are any default actions you want generated along with the main controller. **Also,** make sure your Controller name is a pluralized version of whatever word you choose (e.g. 'Pages', 'Users', etc.). The extra actions you passed in would be created along with the basic CRUD actions (create, read, update, destroy).

So, if you were to view the file in app/controllers/controller_name.erb then you would see code like:

```ruby
def create
end

def read
end
```

I'd also suggest creating a new Rails app and then generating a controller, to see what files it spits out.

***

