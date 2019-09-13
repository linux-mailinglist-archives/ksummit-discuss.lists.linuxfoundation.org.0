Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1744CB2403
	for <lists@lfdr.de>; Fri, 13 Sep 2019 18:23:31 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B3CAACBD;
	Fri, 13 Sep 2019 16:23:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5669CAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 16:23:12 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EBC58A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 16:23:12 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F2ADE2084F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 16:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1568391792;
	bh=XBhW0RulSz4o/XDYxZVf1g6ROdaDGMGahgaAIbta5ZY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gZFxdrlora6s1+xPep5enpPNnBP6dwf52soNKPpr74L3f/ccuUVu44fqoJyYtC2vD
	P2axHhFyV47YnzKl21sPN6zQq2uOa8h9vTbDsofe+6hV4QZwqdCM51CrJhiA5ywGV+
	RTyv4oCgRlhVRFAP3QZTMtLQI0Fmm50/WMv4Yg2I=
Received: by mail-qt1-f174.google.com with SMTP id r15so34563371qtn.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 09:23:11 -0700 (PDT)
X-Gm-Message-State: APjAAAU12rgPIsyxyYlfOqClKy/I4WQJO13o+8Bi9lkzAmTa1Ff0eo+7
	C6Xv71j1aJKifv3HDfYj/nfBqzsQeImiW7tx0Q==
X-Google-Smtp-Source: APXvYqx+gnXOPT9VU7LrL41Y6m8gno8fFVNh/7OtHy6WMacTIBpZs1xwKDAR0CYmnzGENfAprCa2XUiM8qBzOLr6haY=
X-Received: by 2002:ac8:4a05:: with SMTP id x5mr4036604qtq.110.1568391791157; 
	Fri, 13 Sep 2019 09:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190911150804.GA10046@mit.edu>
	<20190912120602.GC29277@pure.paranoia.local>
In-Reply-To: <20190912120602.GC29277@pure.paranoia.local>
From: Rob Herring <robh@kernel.org>
Date: Fri, 13 Sep 2019 17:22:59 +0100
X-Gmail-Original-Message-ID: <CAL_JsqL55Y+8RzvPOGSUDqKQtDNOmxaZbJzHdDj2j6sLesDxKw@mail.gmail.com>
Message-ID: <CAL_JsqL55Y+8RzvPOGSUDqKQtDNOmxaZbJzHdDj2j6sLesDxKw@mail.gmail.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
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

On Thu, Sep 12, 2019 at 1:06 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
>
> On Wed, Sep 11, 2019 at 11:08:04AM -0400, Theodore Y. Ts'o wrote:
> > Hi all,
> >
> > Many of you attended Dmitry Vyukov's talk at the Kernel Summit track
> > today, "Reflections on Kernel Development Process, Quality, and
> > Testing".  (For those of you who haven't, the slides are available
> > here[1].)
> >
> > [1] https://linuxplumbersconf.org/event/4/contributions/554/attachments/353/584/Reflections__Kernel_Summit_2019.pdf
> >
> > Greg K-H has suggested, and I strongly agree, that it would be
> > worthwhile to add this to the agenda of the Maintainer's Summit.  In
> > particular, what next steps should we take and what should be the
> > criteria and the process for trying to further standardize our tools
> > and processes in order to make make our development processes more
> > mature and to improve developer productivity and happiness.
> >
> > If you didn't attend the talk, I encourage you to take a look at the
> > slide, so we don't have to spend time trying to bring people up to
> > speed on the discussion to date.  My plan is to schedule this as our
> > first topic tomorrow afternoon.
>
> To follow-up, this is a very rough outline of a proposal that I am going
> to submit to the Foundation in hopes to fund maintainer tool
> development. It follows along some of the lines highlighted in Dmitry's
> talk.

As long as the submitter side is a free-for-all, that's going to make
the maintainer tools more complex to implement and less reliable.
Seems like submitter tools should be included here too. Specifically,
the steps between having a git branch ready for review and
git-send-email are a lot of manual steps. Though maybe a lot of that
is just all of us agreeing on more standardized requirements as is
being discussed in 'Maintainer Entry Profiles'.

> --------
>
> # Stage 1 (Normal brain): "local patchwork"
>
> - Implement a mutt-like tool ("putt"?) that uses locally cloned
>   public-inbox archives to track patches/series submitted to mailing
>   lists
>     - Pre-filters by keywords and paths in patches
>     - Tracks and automatically inserts taglines
>       (Reviewed-by, Acked-by, Tested-by)

A frequent problem I see is submitters failing to add tags on
subsequent versions. Either the tool can check older versions and
apply those tags too or provide an auto reply to the submitter. Either
way, if we have an interdiff, it should be easy to distinguish cases
of the submitter forgetting vs. patch changed and we need to re-review
it.

>     - Can ignore a patch/series until it sees certain taglines
>       (Tested-by: zeroday bot, Reviewed-by: Trusty Intern)

There's also ignore after seeing a tag. IOW, if I've acked something I
want to ignore it.

>     - Automatically tracks latest series and offers an interdiff view
>       between series revisions ("show me what changed between v1 and v2")
>     - Allows responding to patches and conversations a-la mutt
>     - Allows applying patches/series to local repos
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
