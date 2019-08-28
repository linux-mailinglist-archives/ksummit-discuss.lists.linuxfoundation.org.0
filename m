Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CAAA0D77
	for <lists@lfdr.de>; Thu, 29 Aug 2019 00:19:26 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 056BC3B27;
	Wed, 28 Aug 2019 22:15:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15A5C3AAD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 22:15:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 770D513A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 22:15:23 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id n7so1421789qtb.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 15:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9Xo7bWGRfMzE1Ynz7hEJE3HRGZxboTkjTu4FhmheMU8=;
	b=BtFcGeBQQvugvijde8cXh2mZBDEd4fsocj4a9a4dLScoKFGRoHMi3ym2k1f+RARrwJ
	5eIEA02NviSGD+QtEOb3pc3jXr7W/XWDcoaATE3XTbm3vmApqkICRELs+Hqb287w12xQ
	1hfaKBCuNZNWOuPh9Oe3KSd4TJxmWeHVPXwOrs078GF2h18pKldaP3UISaNth48Qn6da
	kgs+RN/xgpwIyXxHaNG/cJXhY4OO8MuWbRAMd+4g1c087d78iZTlX1wuCaae3lhXX2I4
	EKU9jhV9++KpMuLg859M1XNLej1NNlAQFcLccB4HDaQtH1S2lXdP5uchEd2ceczQ3qHo
	yMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9Xo7bWGRfMzE1Ynz7hEJE3HRGZxboTkjTu4FhmheMU8=;
	b=EPxAZ+SdBs1C+8IMZzCAsOBq+U2YXkKPTc70nqJu6ONXDnjjthdRwx+X8pwRqVSOgM
	xyfcYxwIRpA4dZ2c07oRagTEEkMx8dLeynajeKIqucKRPchbhtUBm/ugTs0Q5uyDzYDx
	Rn4/AI4wB5pohF63qGI7uRcXUNa/aO7S+OQ0ZmENWfYk13Ls+bAJj2/jZrME7I9hpJQM
	rT8FNF1ZE8wKiEndRfK2UzWLCDpeWm610a1KdbrxWXzrcxpmMhQsJUE4rMxHsUN+A/n1
	oVjo12h2VlCDcDDbwr9A97sEp2LVP/FzXXnQe9+ztMLlz0yChdl7VM/iMKdMe9rxWIK0
	kSvQ==
X-Gm-Message-State: APjAAAVRbO6C/i0Bk4d7CRwvUWo3FvC4dKQ7vmwyPQv/GgcfeDKijJOO
	dV5jsPMVP2g2qlyThBj0gmb0cDNL5nQlfpPAuQ==
X-Google-Smtp-Source: APXvYqyHLOAUIj2C4ucLgrxw6CLfBvNSBI4vggIllkqwWrOoc58YRcoALP1KyNeb2ZulZPZ7n/WOZ+57WjjRn9cjfdM=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr6770576qto.224.1567030522298; 
	Wed, 28 Aug 2019 15:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
	<CAJWu+oocs3T8orMNt6AmdVgWONzZg0vD=E8EdvzE9rOi_XatUw@mail.gmail.com>
	<20190828135820.GA24857@mit.edu>
	<CAD=FV=VLMFxFt55oB4ERTFw3xnH4czUY5tXiqfY14NKZ8gqojA@mail.gmail.com>
In-Reply-To: <CAD=FV=VLMFxFt55oB4ERTFw3xnH4czUY5tXiqfY14NKZ8gqojA@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Wed, 28 Aug 2019 17:15:10 -0500
Message-ID: <CAL_JsqJExCf=mzoX=mS3B=9iA8mCyWxQbrfL9iPXSBHJrfSCeQ@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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

On Wed, Aug 28, 2019 at 3:39 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, Aug 28, 2019 at 6:58 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >
> > On Wed, Aug 28, 2019 at 08:38:33AM -0400, Joel Fernandes via Ksummit-discuss wrote:
> > > The idea is to make it trivial. All of the steps above are automatic
> > > and scripted, that's the whole point of what I was saying - to make it
> > > automatic. If it is not automated, then it is unlikely to be adopted
> > > widely or unlikely to stick. The final user will experience it as
> > > trivial.
> >
> > I'm going to gently suggest that we've reached the point where instead
> > of people trying to argue for their suggested solution is to actually
> > *implement* a prototype.  It'll be a lot easier for people to judge a
> > particular solution if it exists, than to debate about vaporware.
>
> For anyone interested, I've prototyped up my proposed solution.  I
> personally use patman (a tool hosted in U-Boot) for managing my
> upstream posting so I have posted a patch to patman that encodes the
> Change-Id in Message-Id.  We will see what folks there think of it.
> There are at least a handful of other people who use patman for Linux
> but lots in U-Boot so maybe it'll be a good way to get a feel for
> this.
>
> Feel free to look at:
>
> https://patchwork.ozlabs.org/patch/1154833/


>
> The actual Message-Id generated there was:
>
> 20190828132723.0.RFC.Ie6289f437ae533d7fcaddfcee9202f0e92c6b2b9@changeid
>
> Thomas Gleixner: I tried using the python library to generate a
> Message-Id but it produced something that was way too long and I felt
> that would be a showstopper when a maintainer in Linux tried to
> provide a "Link:" to one of my patches.  I have generated my own
> format based on what Rob Herring seems to do (an example Message-Id I
> see from him is "20190827223716.GA31605@bogus").

FWIW, that's just mutt configuration to not expose your hostname:

set hidden_host = yes
set hostname = bogus

Rob
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
