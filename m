Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 549C6AF98D
	for <lists@lfdr.de>; Wed, 11 Sep 2019 11:53:35 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9F6041AD7;
	Wed, 11 Sep 2019 09:53:09 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C69B1AD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 09:53:07 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CCE381A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 09:53:05 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 36104206A1;
	Wed, 11 Sep 2019 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1568195585;
	bh=C3rZJhVBxjPCLyxtjucUjQlnO2+h1L13Z4E1FZnr2z0=;
	h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
	b=cYr9OoQZuoArA2qSwZS/p/UK0aB7gJ2FK/KzRhaABCGmypkqVJNlqEk7CdSZp9zAj
	QW5M4jOw9/sONYJv3zEUru16TYtEqmL395r/Z/70fdGPr9at5hmJx/4j3mv35Bg9KZ
	2mGL+0SqqAKgdrLR5MPnhQBgtvc8bqwBH8ip+TOA=
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
References: <20190830031720.GA7490@mit.edu>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
	<87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>, Rob Herring <robherring2@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Wed, 11 Sep 2019 02:53:04 -0700
Message-Id: <20190911095305.36104206A1@mail.kernel.org>
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Quoting Rob Herring (2019-09-06 03:50:47)
> 
> Independent of the exact process, a git branch for every series would
> be great. As a maintainer, I would love to be able to do 'git fetch
> some-remote <message-id>'. I don't really care to write and maintain
> code to apply series and figure out what branch they apply to. That
> code already exists and I'm sure is more robust.

+1. It would be huge if 'git am' could gain the ability to apply an mbox
(which it can already do) and parse out the tags to add them to all the
right patches. I have a script that mostly does this but it needs some
more work because sometimes people reply to the cover letter and say
their reviewed-by tag applies to patches 1-3, 5 and 6 and parsing that
isn't necessarily easy.

> If the submitter
> provides the branch to begin with in a automatable way, then great,
> but that's a much bigger process change.

I've been formatting patches with the --base option for a few months now
so that the information about the base commit to apply the patches to is
part of the cover letter or after the patch if it's a single patch. The
one missing piece is I don't have a database of patches that are in
-next or being discussed on the list that these patches may depend on
(indicated by prerequisite-patch-id:). Of course, this changes the
process a bit so unless we can somehow force this option on for all git
users in the kernel and require new users to do this then we're not
really able to do much. My script falls back to the clk/master branch
(typically -rc1) so that there's a sane base to patch against when this
information is missing.

> 
> > - The system could decide what the relevant lists as well as maintainers
> >   to Cc are, using up-to-date info from MAINTAINERS. It could provide a
> >   way for maintainers and developers to opt in/out of Cc, in fine
> >   grained ways, instead of leaving that decision to the contributor.
> >
> > - The system would know what the message-ids of the patches are, because
> >   it would generate them itself. Thus it would know what messages on the
> >   list are patches it sent, and which versions of the patches and/or
> >   series, and which replies are review. (It's incredibly hard for
> >   patchwork to identify patch series and their versions just by reading
> >   the list. It can get confused by review that contains a patch.)
> >
> > - New versions of patch series could automatically contain a diff
> >   against the previous version of the patches/series. You could easily
> >   tell if the previous review still holds or needs checking.

I do this by applying all patch series and grabbing the version tag out
of the PATCHv<N> part and using 'git range-diff' to see what's changed.
I don't do this very often though because it's a huge pain. We could ask
developers to use --interdiff on 'git format-patch' but again this is a
process roadblock.

> >
> > - You'd still retain the familiar email based review, but it would be
> >   easier to find the various versions of the series, and you'd always
> >   have the changes readily available in a git repo. (This ties to a
> >   previous discussion about how to link patch series versions
> >   together. It could be all taken care of, automatically.)
> >
> > - The maintainers could keep their email based flow, applying patches
> >   from the list. But there'd be fewer email related technical problems
> >   with them. Additionally, there'd be a way to pull the patches directly
> >   from a git tree, possibly pre-amended with the Reviewed-by, Tested-by,
> >   Link, etc. tags.
> >
> > - You could add tons of useful git hooks on the contributions, ranging
> >   from pre-merge testing to notifying linked bugs and whatnot.
> >
> > Note that I'm not suggesting contributors should have git repos from
> > which they send pull requests. Instead, you'd have a centralized repo
> > for the project where you can push your submission. Sure, lots of
> > details to work out there. But the git send-email part is, IMHO, a
> > broken part of our process, even if the changes keep being distributed
> > as emailed patches. It just doesn't seem that way to the people on this
> > list, because we've figured all of this out eons ago for ourselves. We
> > forget the long tail of contributors that we always brag about.
> 
> I certainly agree that the steps between having a git branch ready and
> sending the patches could be improved. If we can automate taking a git
> branch and sending the emails on the server side, we could do it on
> the client side too. The same problems will exist and need to be
> solved: get_maintainers.pl is not completely accurate, who to Cc on
> individual patches vs. series, writing version history, etc.

The git project has this "bridge", sort of. It's called GitGitGadget[1].
It would be awesome if we could have something similar for the kernel so
that we can get more contributors through the 'github' model and try to
nudge them to use email at the same time.

[1] https://gitgitgadget.github.io
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
