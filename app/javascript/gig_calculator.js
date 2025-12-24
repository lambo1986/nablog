window.calculateGig = function () {
    const pay = Number(document.getElementById("pay").value);
    const hours = Number(document.getElementById("hours").value);
    const logistics = Number(document.getElementById("logistics").value);
    const practice = Number(document.getElementById("practice").value);
    const travel = Number(document.getElementById("travel").value);

    const likesMusic = document.getElementById("musicYes").checked;
    const likesPeople = document.getElementById("peopleYes").checked;

    if (!pay || !hours) {
        document.getElementById("result").innerText =
        "Please enter pay and hours.";
        return;
    }

    let score = pay / hours;

    if (likesMusic) score += 30;
    if (likesPeople) score += 30;

    score -= logistics * 2;
    score -= practice * 1.5;
    score -= travel * 0.1;

    let verdict;
    if (score >= 75) {
        verdict = "🔥 TAKE THE GIG";
    } else if (score >= 35) {
        verdict = "🤔 Maybe — depends on your mood";
    } else {
        verdict = "❌ Hard pass";
    }

    document.getElementById("result").innerText =
        `Gig Score: ${score.toFixed(1)} — ${verdict}`;
};
