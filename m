Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B730B82F4
	for <lists@lfdr.de>; Thu, 19 Sep 2019 22:53:04 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 05847CAC;
	Thu, 19 Sep 2019 20:52:50 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 660F7BE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 20:52:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8D49711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 20:52:46 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id x4so6020266qtq.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 13:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JdfhC0YuUNEqECSQ88rgUq1fjO1nkaZk7TS9P6WUaz4=;
	b=IScteKIosCs82lEdmcY5+Z7w8DK+W0SOG2mahXJEuOS5lDrXpN3tbOEJBG5Mv3+Cw8
	uRWVoj8ktN/7hgZoa+kru9xT5IBfeUEwaw3yHeCoULelsx2bFNUrOz+tIj2XuNisyySF
	+/bqGfn0q6QpipOlvmz8rTsSi/tdopl+Cg74GD6wy/ee+JLMKesnr2UnMU5UOeiqA83J
	0x8+jXR3Bq8oFLq0Lq1h6vErHghNdK+MyH1kSXmVczyEE9OlaIVQLLdVR6C+Z6WYDsvf
	sdvmiJ3TPfHOozbugFhB+sKt8bEqGXsOGR/SMupo4JbDcGR/nPhAz0lHDUgQggDkORD8
	4TvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JdfhC0YuUNEqECSQ88rgUq1fjO1nkaZk7TS9P6WUaz4=;
	b=BqUOtiAwD1OhzJrzwg4Nq0iaA7+Vk0gyLqLXxfGEVW3eZk1krUGEcRT6nRpb85lWD0
	zKVAKLrXdGVPVQHdBKDShdJPqKn9OCT6EHOrsLw3252gDppf9mvkHy5etYNRaC1YqQjy
	zM8YdZQvrdw5nbrcAFXSMUhfjCYhEnWkrC8uWSsG3oBeSTzZMtqTmXwXwa0jV3wdD4Jq
	gSW0M6Vmj5hIjDHCedA+gOUlGJDtm2gdGam82NIopFOp96a3rBmV3FMrqaUjgQNYiNGM
	fwC2RBFFbXUXmjvZpVr68t3m6Xn/rsqMmjiCs3zfCQyEzupSdq2R2SiidkFetffr4itB
	mC2g==
X-Gm-Message-State: APjAAAU5aDG78uRNQYG4+lK9rceRMVgHqyvrpqhyOOCEnMnLgJyGydPq
	gOBEhHYu3PY5IdJ0bI0fwmnT+qTcjDdakPrmSQ==
X-Google-Smtp-Source: APXvYqw73kQhQJWf2r76Ml7tdrMRsohB66TVKBZU0gn4WOCJ1cDMyTvOdIIO2UwXig6gxaKiF9k7N1z3VwDXuDqEN2Q=
X-Received: by 2002:ac8:100d:: with SMTP id z13mr5572212qti.224.1568926365778; 
	Thu, 19 Sep 2019 13:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<CABhMZUUzyMXyKthjt31qU-p-2=6s2Cvw5jb=bw3=T76kzfUyKA@mail.gmail.com>
	<CAL_JsqJTpA68gAkT2k5ziHF8RbVsmKcf2ZLTGSexPkrwL6Vkzg@mail.gmail.com>
	<CABhMZUXq5Qy4seNYfc_0CDz=jqhB0kUgL2+dNxWq84=VcpPQOA@mail.gmail.com>
In-Reply-To: <CABhMZUXq5Qy4seNYfc_0CDz=jqhB0kUgL2+dNxWq84=VcpPQOA@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Thu, 19 Sep 2019 15:52:34 -0500
Message-ID: <CAL_JsqLOKUszUNWGf0PzmKbFoUd0ZVUKztg4+5jcJ8u-ezbjfg@mail.gmail.com>
To: bjorn@helgaas.com
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, Sep 18, 2019 at 8:48 PM Bjorn Helgaas <bjorn.helgaas@gmail.com> wrote:
>
> On Fri, Sep 6, 2019 at 5:21 AM Rob Herring <robherring2@gmail.com> wrote:
> > You might like my set of bailing wire using patchwork and mutt. It
> > works offline if you download the patchwork state beforehand and
> > queues up state changes. The basic flow is:
> >
> > Load the "New" list from PW (my PW instance is pre-filtered on paths,
> > so I don't have to sort thru everything on the DT list)
> > Check for multiple versions of patches, auto email on failure to add
> > my review tag, check for already applied (to next).
> > Iterate thru the patch list:
> >   - Run checkpatch.pl
> >   - open mutt for each patch. Mutt has the full DT list, so I can look
> > at the rest of the series if I want.
> >   - After exiting mutt, prompt for PW state change
> >   - Possibly apply it
> >   - Generate replies for applied, reviewed-by or acked-by
> >
> > Happy to demo it at LPC if you are interested. You can find it
> > here[1]. The main script is pw-review.
>
> Thanks for the demo at LPC!  I'm trying to understand how all the
> pieces fit together.
>
> How do you download the patchwork state beforehand for working
> offline?  For me, actually working offline is nice but rare; my
> complaint is that I have to wait for every little interaction
> (delegating, superseding, changing state, etc) to talk to the server.
> The waits aren't long, but they make the whole process feel sluggish.

I just run 'pwclient list' formatted so I can parse it and dump into a
file. After that, the server interaction is mainly just doing
'pwclient update' commands in the review loop. In the offline case,
instead of running the commands, I just save them to another file to
run later.

> You mentioned some CI bits (to run checkpatch, change patchwork state,
> etc).  Is there a way to look at that?  I'm guessing you also have
> some mutt keybindings or macros?

Basically, I run this script which can run either locally on your
system or as a CI job:
https://gitlab.com/robherring/pw-utils/blob/master/pw-checks

This is the CI job:
https://gitlab.com/robherring/linux-dt-review/-/jobs/299584584

Either way, checks get added to the patch state. For example:
https://patchwork.ozlabs.org/patch/1164550/


A somewhat design goal I had was to not tie this into mutt too much.
About all I have is a git am key binding, but now I usually apply
using 'pwclient git-am' so a I get the tags. That's one thing that
doesn't work offline. Not a big deal for me as most things go thru
other maintainers. I just leave anything I'm applying pending and go
thru them again when online. It wouldn't be too hard to just download
all the patches from patchwork up front and then use that to apply
patches.

> Is http://patchwork.ozlabs.org/project/devicetree-bindings/list/ the
> patchwork you're using?  ISTR one that showed the CI results.

Yes.

> I guess you keep your mbox trimmed somehow?  Starting mutt on my
> linux-pci folder takes 5-10 seconds.  But for this purpose there
> wouldn't really be a need to have the *entire* history, I guess.

Yeah, gmail limits it for me.

BTW, I'm using maildir currently. I switched from mbox at some point
as I had some issues with searching the mbox.

Rob
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
