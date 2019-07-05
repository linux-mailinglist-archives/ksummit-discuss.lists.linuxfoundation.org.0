Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE9360214
	for <lists@lfdr.de>; Fri,  5 Jul 2019 10:25:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6F91BFE0;
	Fri,  5 Jul 2019 08:24:48 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3085FC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 08:24:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F34B87B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 08:24:44 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id r21so3586850otq.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 01:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qNKWPlPO7eueAIS6fhP0zw64vM2rYUfGjnISIiqgql8=;
	b=RguTjY9ym5tWJx0SSiDuOSxnSTNTZZ+dOTqluCqs6jaLSbyENY5F3v05Av7vg7B82d
	BCEPQd2CmCoPDblvbar362YDr9WcwokmwUOnKaMH8/+EWPlpF0zKqYMynjpwB5b/Oj6Q
	MJcwq9e2bxR7alPYFvAqEF3s5lSL1+pST9UH7jxlrm0X8IPGrLy6t/x72YMthZIjV6kG
	tMLyZIZhBf6dZGP5kBiq+opO7kvO7yJmDm5c1gwpX4NjL8trFbhtdrD6pPkzTdaxEFHa
	b1/1y5qPwUthh1L//XoSZ6Vhw0vyn1KlxJxbjxw1zhn+OeB1dYm+yu1s6gpUQI/Pws/r
	6ivQ==
X-Gm-Message-State: APjAAAVBEgMlRvcjnidtx1clsZsLVmhcUdsRi9Nv4dUF0m3tbM6lcv+8
	oOwY+Jt5QdNvufOBDismFnAx6pEojB+LudH+NjQGTg==
X-Google-Smtp-Source: APXvYqyzZwnF6LP1ZnIiLHNidwAF2sLoIsZyViWQl2PYZ8ISaTb2ZmyVW0GAwwr/ys+rAHlvwTCTnSPoQbJr4ypjRwE=
X-Received: by 2002:a9d:69ce:: with SMTP id v14mr2006743oto.39.1562315083794; 
	Fri, 05 Jul 2019 01:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<CAMuHMdX-Wq=XkzUBHN5+wPxb=ijwxJrt_5vR3LctMVyXyPcehw@mail.gmail.com>
	<alpine.DEB.2.21.1907041615200.1802@nanos.tec.linutronix.de>
	<87wogx17a5.fsf@concordia.ellerman.id.au>
	<87r27515qi.fsf@concordia.ellerman.id.au>
	<alpine.DEB.2.21.1907050826590.1802@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907050826590.1802@nanos.tec.linutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 5 Jul 2019 10:24:31 +0200
Message-ID: <CAMuHMdXOB58UFejEGJaMjsj5Hinrf+k4m7kzZCwcHt9=cF9x2A@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
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

Hi Thomas,

On Fri, Jul 5, 2019 at 8:28 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> On Fri, 5 Jul 2019, Michael Ellerman wrote:
> > Michael Ellerman <mpe@ellerman.id.au> writes:
> > > Thomas Gleixner <tglx@linutronix.de> writes:
> > >> On Thu, 4 Jul 2019, Geert Uytterhoeven wrote:
> > >>> On Thu, Jul 4, 2019 at 2:22 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> > >>> > If you've got the link back to the mailing list archive, do you also
> > >>> > need Cc: tags in the change log?
> > >>
> > >> Probably not.
> > >>
> > >>> > It's always seemed to me they don't really add any value, they just tell
> > >>> > you that lots of people were Cc'ed on the patch and probably didn't have
> > >>> > time to review it :)
> > >>>
> > >>> +1
> > >>>
> > >>> Especially if the CC list was generated by blindly copying the output
> > >>> from scripts/get_maintainer.pl, without passing through a common sense
> > >>> filter.
> > >>
> > >> And the maintainer then blindly picks it up :)
> > >
> > > Sorry to pick on you but I figure you can handle it :D
>
> I didn't feel offended :)
>
> > > This is the kind of thing we should really have a script to check for,
> > > so that maintainers don't have to think about it when committing.
> >
> > Actually it looks like it's the tip bot adding these tags explicitly.
> > Compare the original submission:
> >
> >   https://lore.kernel.org/lkml/20190425094803.816485461@linutronix.de/
> >
> > vs the tip-bot reply:
> >
> >   https://lore.kernel.org/lkml/tip-3599fe12a125fa7118da2bcc5033d7741fb5f3a1@git.kernel.org/
>
> No, it's my mbox to quilt script which does that for hysterical
> raisins. Trivial to fix though.
>
> IIRC git-am does the same, but I might be wrong as usual.

I'm happy to prove your last point ;-)

At least the version of git-am I'm using does not add Cc: tags based on
Cc: headers.

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
