Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D092CE729
	for <lists@lfdr.de>; Fri,  4 Dec 2020 05:54:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E03C87074;
	Fri,  4 Dec 2020 04:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Geo3IvW5rCg9; Fri,  4 Dec 2020 04:54:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B66D58720A;
	Fri,  4 Dec 2020 04:54:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82160C0FA7;
	Fri,  4 Dec 2020 04:54:22 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 65348C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  4 Dec 2020 04:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BF4387DAB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  4 Dec 2020 04:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtkDAYQ04vo3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  4 Dec 2020 04:54:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B5DE87DA4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  4 Dec 2020 04:54:19 +0000 (UTC)
Received: from callcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 0B44sE4A008436
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 3 Dec 2020 23:54:15 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 1E872420136; Thu,  3 Dec 2020 23:54:14 -0500 (EST)
Date: Thu, 3 Dec 2020 23:54:14 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <20201204045414.GP441757@mit.edu>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
Cc: LKML <linux-kernel@vger.kernel.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Thu, Dec 03, 2020 at 12:43:52AM +0100, Vlastimil Babka wrote:
> 
> there was a bit of debate on Twitter about this, so I thought I would bring it
> here. Imagine a scenario where patch sits as a commit in -next and there's a bug
> report or fix, possibly by a bot or with some static analysis. The maintainer
> decides to fold it into the original patch, which makes sense for e.g.
> bisectability. But there seem to be no clear rules about attribution in this
> case, which looks like there should be, probably in
> Documentation/maintainer/modifying-patches.rst

I don't think there should be any kind of fixed, inflexible rules
about this.  

1) Sometimes there will be a *huge* number of comments and
suggestions.  Do we really want to require links to dozens of mail
message id's, and/or dozens or more e-mail addresses?

2) Sometimes a fixup is pretty trivial; even if it is expressed in the
form of a one-line patch, versus someone who does a detailed review of
a patch, but doesn't actually end up appending an explicit
Reviewed-by, perhaps because he or she didn't completely agree with
the final version of the patch.

3) I think this very much should be up to the maintainer's discretion,
as opposed to making rules that may result in some rediculous amount
of bloat in the git log.

4) It's really unhealthy, in my opinion for people to be fixed on
counting attributions.  If we create fixed rules, this can turn into
people try to game the system.  It's the same reason why I'm not
terribly enthusiastic about people trying to game Signed-off-by counts
by sending gazillions of white space or spelling fixes.

If the fix is large enough that for copyright reasons we need to
acknowledge the work, then folding in the SoB as for DCO reason makes
perfect sense.  But if it's a trivial patch (the kind where projects
that require copyright assignment wouldn't require executed legal
agreements), then perhaps attribution is not always a requirement.
Again, there are times when people who spend a lot of work discussing
patch may not get attributiionm even if they didn't actually create
the one-line whitespace fix and sent it in as a patch with a
signed-off-by with a demand that the attribution be preserved.

Common sense really needs to prevale here, and I'm concerned that
people who like to create rules don't realize what a mess this can
create when contributors approach their participation with a sense of
entitlement.

Cheers,

						- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
