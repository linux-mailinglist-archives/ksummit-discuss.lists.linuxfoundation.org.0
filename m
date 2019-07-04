Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9295D5F913
	for <lists@lfdr.de>; Thu,  4 Jul 2019 15:24:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 397571157;
	Thu,  4 Jul 2019 13:24:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A2F86111A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 13:24:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2767970D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 13:24:30 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id n5so5986158otk.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Jul 2019 06:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PrycOXDPTtyeIAklYPan23oD8ENfIwAE5KNBJpkO6sU=;
	b=HAWzoTVTddTf9+Ndmxp1aCwNaKS+b9OGFVqUfLgySiQr+VrYoVnyiOPjbuoY4bRF5h
	JTxKc5+MMWtNRzvrPd9Av6cCQqKllIHlxGMuxSBxfam/x58hs3DVMfQdKWsY7tM01+0T
	5pkNASyD7Mzy8brmxVuJikXlX0bku4EzqXFiMfCLTeaCJDMToJI3msh4svvjx22zVqqy
	9ElaxSYVjzNCYqnmQ4UuRrvo0XAxaSq9LvsLH8Ay0i9P7NJXg+dndeZJZBBXZA8eknrB
	agzSH8dgc4Zep40/9uANGguDyHYf3sOdcKBbVk3P3d5UV3+5OEb43seejsYqxWXj9wdY
	heuQ==
X-Gm-Message-State: APjAAAVd2kVj0eiRWtM7W1U5lOWH0L7UmdeWm7bbXxOeVbImpZ94vXzB
	KZ95XWMP6jF7d3uiafevFWF3KdpLFBtHLwE7ixM=
X-Google-Smtp-Source: APXvYqxazo/5/2PRyFuVfswmDbmV0MrO7oPs4XeZN9ezvf9cY1MKUTZ3AaSeTG3ACk1E47MaB3qk8oSCiaVQfHOCjI0=
X-Received: by 2002:a05:6830:210f:: with SMTP id
	i15mr6858903otc.250.1562246669329; 
	Thu, 04 Jul 2019 06:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
In-Reply-To: <87y31eov1l.fsf@concordia.ellerman.id.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jul 2019 15:24:17 +0200
Message-ID: <CAMuHMdX-Wq=XkzUBHN5+wPxb=ijwxJrt_5vR3LctMVyXyPcehw@mail.gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
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

On Thu, Jul 4, 2019 at 2:22 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> Thomas Gleixner <tglx@linutronix.de> writes:
> > On Sat, 29 Jun 2019, Takashi Iwai wrote:
> >> On Fri, 28 Jun 2019 22:51:03 +0200,
> >> Luck, Tony wrote:
> >> > That captures for posterity the useful information without
> >> > bulking up the commit log with the blow-by-blow deltas of
> >> > how the patch series evolved across 27 versions submitted
> >> > to the mailing list.
> >>
> >> Agreed.  And I'm thinking whether we may have come consistent tag
> >> for following the post discussions on ML archive.  Then the detailed
> >> descriptions can be dropped from the changelog, and readers can still
> >> follow easily.  e.g. the patch version change can be simply a
> >> reference URL.
> >
> > This tag exists today:
> >
> >      Link: https://lore.kernel.org/lkml/MESSAGE-ID
> >
> > my 'grab patches from list' scripts insert that tag automatically and it's
> > part of the commit changelog in git. That allows you to just jump to the
> > mail archive of the merged submission.
>
> If you've got the link back to the mailing list archive, do you also
> need Cc: tags in the change log?
>
> It's always seemed to me they don't really add any value, they just tell
> you that lots of people were Cc'ed on the patch and probably didn't have
> time to review it :)

+1

Especially if the CC list was generated by blindly copying the output
from scripts/get_maintainer.pl, without passing through a common sense
filter.

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
