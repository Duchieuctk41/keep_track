# Define the target
t:
	@if grep -q "1" keep_track.md; then \
		sed -i '' 's/1/0/' keep_track.md; \
	else \
		sed -i '' 's/0/1/' keep_track.md; \
	fi
	git add keep_track.md
	git commit -m "Update keep_track.md"
	git push origin main
