Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 750C6AC0F3
	for <lists@lfdr.de>; Fri,  6 Sep 2019 21:53:32 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C4E1C25A2;
	Fri,  6 Sep 2019 19:53:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B07B2232E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 19:53:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9686D823
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 19:53:15 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id p12so15460103iog.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Sep 2019 12:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lixom-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oxKHly1FRoagr+c5Uon4rZ4Q4aAPAzUvxVeLhJq0WmM=;
	b=jMWjrjhuAPsGhdcPwF7UVQkQ4j2I1fj3N7p1iJ9ipy26KUYb+zysPUDopjp5KRXPCc
	49GKgI7TV5XbPGOPzPcPpWPt5G/5FbogqmM7IABr3vIrmpfCIuZxSLlEqPlL+uNVUptm
	Uu5UT6WljXWdU+PCideWC5qeEb8e1+MQ2kg01BfXEbWt/h+9w+Ybu4l6vAvV6vlqPb3H
	QZhMQJNr1DhxjndWzu3RIY2+g9WGYb86pGgiRupE9XeUUlOFZcLwYiwaJpSCaIeZx28G
	ZnsRZYTjpzgQ6z5Ivt3R5DoQNV4h/ExsyApVKaUFnAxkk5srPfKEpgNrERi8hByXsDWl
	6Teg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oxKHly1FRoagr+c5Uon4rZ4Q4aAPAzUvxVeLhJq0WmM=;
	b=brIY6CdtZJXr7RY6h0SEFel6XxhfOmjff+ta7Ev/vRrzrviVLt5/zM7dj/5KNJyVt2
	X4uFC47qUP5jo1N3B1aFIwulccsQHyJgxZm4U0IQThwpm3WKfMCj8uG3Un542GlAHzPs
	vVklP0GlKGMYMLQri7g650O5ZlyH2W7i4vZVPfi39VmoecMVA6nhxk9qs/LipT/fI5bJ
	A2Dd2xU9l12/913IDYTlp8bwmaIWuZxZjyyCxh8WqOB/Lq3cGPIR7f0HZBNx1jNg8YXV
	6KBxcctr394+bxYvOKZdtMSPTJrYyLZytTG2Rj0RuGUI/7sLNeW1i//H+wth09YInGPa
	sfMQ==
X-Gm-Message-State: APjAAAVY1/qbxRdmvjT+Ss0bc/4jouI0hWFm3QC9W5DHaMql0dzAdxIY
	e/Ofz5ZOfWiG5cOQY5fwj3GzQcmwQuUDwZUUK3XYyA==
X-Google-Smtp-Source: APXvYqw3eMXIUA1LyjbRgVkg/464VEw2A3Gg8ukkoz2C9CuU3cPMoo0SQT5j1jIXIF0k2i21za01l19Kmz7rwXy4+MY=
X-Received: by 2002:a6b:6d0f:: with SMTP id a15mr11769507iod.278.1567799593483;
	Fri, 06 Sep 2019 12:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local> <87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
In-Reply-To: <CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 6 Sep 2019 12:53:01 -0700
Message-ID: <CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
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

On Fri, Sep 6, 2019 at 12:22 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Fri, Sep 6, 2019 at 3:51 AM Rob Herring <robherring2@gmail.com> wrote:
> >
> > Independent of the exact process, a git branch for every series would
> > be great.
>
> That actually sounds really nice. Especially if the cover-letter is
> then done as a tag (probably not signed), so that when you fetch it
> you get the overview automatically - and if you actually do "git pull"
> it would fill the merge editor with the cover letter thing.
>
> Even if you then don't really merge it as-is, it would be a lovely way
> to just get the whole series to work with locally.
>
> Of course, I'm likely biased. Since I do almost everything with git
> (occasional random one-off patches and Andrew's patch-bomb being the
> exceptions), I end up just doing a lot of "git fetch" and then looking
> at the results. Despite still probably being able to edit patches in
> my sleep after decades of looking at them, these days I find that
> easier and more powerful to look at things in git than working on
> patches.
>
> I end up often doing things like just doing "gitk ..FETCH_HEAD" and
> then increasing the context window to see more of the code around the
> patch etc.
>
> Of course, right now I only do it with people who use git branches
> (doing the "git fetch" for the next pull request while the previous is
> going through my build tests, or when people post pointers WIP
> branches etc). Being able to do it for random 50-patch series sounds
> lovely, particularly when you then can limit the gitk to only the
> parts you care about, while _having_ the whole series.

Applying patches to branches with automation is something that's been
on my todo list for a while as well -- especially since having a git
branch pre-staged makes some things easier (running checks, linters,
checkpatch, whatnot) with the way most CI tools work. I'd love to see
this happen. Patchwork has hooks so you can have these "checkers"
report back status, but it can be done over email as well, of course.

Random observation: We're slowly migrating closer to the "web" based
model of github/gitlab/bitbucket where changes come in via a merge
request + branch, but we would be reconstructing it out of email with
the cover letter equivalent of the merge request description, etc.
That's obviously not a problem, just an interesting observation. The
final step of merging it in is still manual in our setup, and that's
what most maintainers still prefer; the "hands off" part of the web
model where you don't actively download and look at the code is what
feels less careful and involved at least for me. Plus the fact that
the master contents of the tree would reside up somewhere on the
internet instead of on the maintainers locally controlled machine with
the trust complications involved in that.


-Olof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
