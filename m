Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1282260256
	for <lists@lfdr.de>; Fri,  5 Jul 2019 10:40:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7C63E1074;
	Fri,  5 Jul 2019 08:40:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BE9761065
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 08:40:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51AFF70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 08:40:37 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id e189so6580417oib.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 01:40:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Q/A8+uRTkRdIUgHB42e+4qa7FuXA8q8p8TCio9ERDu8=;
	b=eP7TSHphvpAcOOJQQ6T14YQ2wrmumYHovlMNOGx0Q2GI3Lm6zIMyHqsOnJzdv8wlgb
	OGO1D8jTvE1Akorg3Mj9/Q53c/2ioyVqsYqGXL+xrsthrlh2NxtFok5TdtgWhmCpXBBR
	/IlI0q7tYKwQM31lvksdiaYx2mk1DH0YpKRrtutVLCeZd/FgSJBLU7XCvZzHD4C0uxDe
	SYitu3tmHQHXjeB+Ey7EHdsGMWCdLx+x/6wJP3Q25F/ECOivVNKK7K5VYHI5h+2kExJx
	EKyaZmxk/j4RA88kYU05QGKUWOzy2welalDB1QavLKXHcijic1TmCmYOTPmHcS3bZXHf
	1jhA==
X-Gm-Message-State: APjAAAW+Fp5Nu8lKE/GHoXTcJOYW01tW3Zo6tnZRE7D6JlBYeDbIWz6c
	kqeVHBcD3MdCu90Q7MX3c/m/t1o62tASundTohM=
X-Google-Smtp-Source: APXvYqz0TIXcPM1U3qdCub5BLcg/DrE2e8i69c06yFoRe2crebbqnnd+obwUKEaZYFdwRSV5viZtuOcXQSMiHDCUz2A=
X-Received: by 2002:aca:c4d5:: with SMTP id u204mr1328499oif.131.1562316036341;
	Fri, 05 Jul 2019 01:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
In-Reply-To: <1562250136.3187.3.camel@HansenPartnership.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 5 Jul 2019 10:40:24 +0200
Message-ID: <CAMuHMdWquGXKsUWOeVMRtoAS4mdbqK7Vpb70anPcPKqjfegaYw@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

Hi James,

On Thu, Jul 4, 2019 at 4:22 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Thu, 2019-07-04 at 22:15 +1000, Michael Ellerman wrote:
> > Thomas Gleixner <tglx@linutronix.de> writes:
> > > On Sat, 29 Jun 2019, Takashi Iwai wrote:
> > > > On Fri, 28 Jun 2019 22:51:03 +0200,
> > > > Luck, Tony wrote:
> > > > > That captures for posterity the useful information without
> > > > > bulking up the commit log with the blow-by-blow deltas of
> > > > > how the patch series evolved across 27 versions submitted
> > > > > to the mailing list.
> > > >
> > > > Agreed.  And I'm thinking whether we may have come consistent tag
> > > > for following the post discussions on ML archive.  Then the
> > > > detailed
> > > > descriptions can be dropped from the changelog, and readers can
> > > > still
> > > > follow easily.  e.g. the patch version change can be simply a
> > > > reference URL.
> > >
> > > This tag exists today:
> > >
> > >      Link: https://lore.kernel.org/lkml/MESSAGE-ID
> > >
> > > my 'grab patches from list' scripts insert that tag automatically
> > > and it's part of the commit changelog in git. That allows you to
> > > just jump to the mail archive of the merged submission.
> >
> > If you've got the link back to the mailing list archive, do you also
> > need Cc: tags in the change log?
>
> Cc: tags are another git artefact.  They're how you tell git-send-email
> where to send copies of the patch for review or notice, but they don't
> really provide any intrinsic historical value.

Or you can use the --cc command line option.

One advantage of having it in the patches is when sending a big series,
and you don't want to Cc everyone on everything: you can control the Cc
field for individual patches.  But usually that leads to at least one
maintainer complaining he wasn't CCed on everything, or on the cover
letter. So better don't do that, and split your series.

> Perhaps we should alter the convention and say that if you're using
> git-send-email and need a cc: list, then you should put all the cc tags
> below the cutoff, say always at the bottom.  That way the version
> information would be first, which is more important for the review, the
> sender would preserve and show the cc list and it would be eliminated
> on git-am.  Any cc tags that were necessary (like cc: stable) could go
> above the cutoff.

Now Michael has verified that putting the Cc: list below the cutoff
works, I see the benefit of keeping it in the commits in your
development branch, just like the changelog: it avoids having to rerun
get_maintainers.pl (and common-sense-filter it) for each revised
submission.

But for series, you still have to take care manually of Cc's for the
cover letter. Unless you store that in git, too, with git commit
--allow-empty? Beware git rebase dropping empty commits!
Oh, there seems to be a --keep-empty option now?
But no corresponding git config option?
And it seems to come with its own caveats
https://stackoverflow.com/questions/45691594/empty-commits-removed-after-interactive-rebase-even-though-keep-empty-is-used

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
