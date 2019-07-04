Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 074E85F349
	for <lists@lfdr.de>; Thu,  4 Jul 2019 09:11:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 10EF7C2A;
	Thu,  4 Jul 2019 07:10:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5286DB62
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 07:10:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7276D87D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 07:10:39 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id l15so4986069otn.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Jul 2019 00:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QbgFbtOvlqEnhw5/pnuvQgovSq7LFY8jUE6P8Pt7SZE=;
	b=h2xX9pVswnhyx6ph8iHqjHak2+IrogiXl2/VWyYo16Sm4LE2QSVl6xhI0YWLugyjBt
	JmFsCtN+4sb4uWREo2NnAaF8vLRLqvPQfKLRxzopMlFSj0FXd+7ZpMZBvQK2LnQrslNY
	AwT1bUa/meUqGwlyfwCydm0mWjFfCEIVDpp6w/FSQGE+xcKoNDtcDjXskohG4EArFlJK
	AntrzAEVbtA6ozTy5JgL1mUKy6U/BtevDcff3Prk+kkRAHZxf9sqnn0ch2i0vjQGb+QH
	io3dqpCz/G5WHjVIiPFmRC8ZSDIZtOmHsgghYt8Y2OtMnSSNOqbmyc5ArmoX2xSqKiiB
	xy6Q==
X-Gm-Message-State: APjAAAVeaJAmp/uXTUkHDHRB2K6+2ywi2Z2cU2IKqzmizBf2rxC90Ga5
	zL07908AuEotNIgDG4p5oZggmbk6f30+kWYPQ22Jl2ck
X-Google-Smtp-Source: APXvYqyvbGiROZsWw439FpvFIcBs2yxOdGo+sG5iXxkqjpGqWQFFj0QRc/YDu0NUnWjlRVEK/dVIunPyg/QMHed0hU4=
X-Received: by 2002:a9d:529:: with SMTP id 38mr29193910otw.145.1562224238568; 
	Thu, 04 Jul 2019 00:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<1562195036.2768.4.camel@HansenPartnership.com>
In-Reply-To: <1562195036.2768.4.camel@HansenPartnership.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jul 2019 09:10:26 +0200
Message-ID: <CAMuHMdU4c1=sPh3qb5rCV0BVsPXjW2AJkF_LXvSVfEd9ET6jrQ@mail.gmail.com>
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

On Thu, Jul 4, 2019 at 1:04 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2019-07-03 at 11:56 +0300, Laurent Pinchart wrote:
> > On Tue, Jul 02, 2019 at 06:43:47PM -0400, Theodore Ts'o wrote:
> > > On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > > > git is our upstream for version control and our upstream has
> > > > already
> > > > had this as a feature since 2014.  Trying to go to upstream  5
> > > > years
> > > > later and ask them to change it is likely going to be a
> > > > singularly
> > > > unsuccessful exercise, plus even in the unlikely event we can
> > > > work out
> > > > how to do it compatibly and without causing confusion and
> > > > upstream said
> > > > yes it would take another few years to propagate.
> > >
> > > If we really want to use the Link: header, we should be able to do
> > > this without requiring any changes to git.
> > >
> > > Step 1)   git config am.messageid true
> > > Step 2)   Write and install a .git/hooks/applypatch-msg script
> > > which
> > >       looks for Message-Id: and transmogrifies that line to a
> > >       Link: trailer, using the lore.kernel.org URL template
> > > Step 3)   Document this in Documentation/process.  For bonus points
> > >       create a script which automatically sets up the user's git
> > >       configuration by setting up am.messageid config and
> > >       installing the hook file.
> > > Step 4)   Profit
> >
> > I may have missed the obvious, but while this should work great for
> > patches applied with git-am, what's the expected workflow for patches
> > written by the author of a pull request ? I certainly post my own
> > patches for review on mailing lists, but I don't fetch them back from
> > the list before sending a pull request. Do we want to move towards a
> > model where maintainers should retrieve their own patches from the
> > lists (or from patchwork) ?
>
> I always apply from the list.  Apart from the obvious benefit of
> getting others to review and not giving the impression of a favourite

I cherry-pick them from my development branch, and rebase -i to add
missing Reviewed-by's, and remove cruft below --- (see below).

For other people's patches, I usually don't apply them from patchwork
(perhaps I should start doing that), but use a custom script to extract
a patch or patch series from my Gmail backup, based on the Message-ID
of the patch or cover letter.  So that's a step where I could auto-add
the Link:.

> path into the tree, I do it because as I construct patches and rework
> them I actually build the version information into the change log using
> rebase (with a --- separating it from the main commit message).  This
> is so I can send the emails directly from my tree without having to add

Same here: I keep the change logs in the commits in my development
branch, and rebase -i to update the logs and add Reviewed-by's.
I use the different colored stars in Gmail to mark patches to queue, or
patches that have new tags to apply.

> the version change information but it does mean the only way I lose the
> version history from my patches when they go into the tree for real is
> by doing an am apply from the list.

Once in a while I do want to keep the version history (mainly when
publishing a topic branch containing someone else's work), but I haven't
found a git am option to do that automatically.

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
