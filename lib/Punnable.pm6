sub make-punnable(\Role) is export {
	Role.HOW does role {
		method make_pun($obj) {
			my $pun := Metamodel::ClassHOW.new_type(:name(self.name($obj)));

			for $obj.^methods.grep({.?yada}).map: {.name} -> $stub {
				$pun.^add_method($stub, method () {...})
			}

			$pun.^add_role: $obj;
			$pun.^compose;
			my $why := self.WHY;
			if $why {
				$pun.set_why(self.WHY);
			}
			$pun
		}
	}
}
