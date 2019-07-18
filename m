Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A466CB91
	for <lists@lfdr.de>; Thu, 18 Jul 2019 11:10:32 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 008F2128D;
	Thu, 18 Jul 2019 09:10:13 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 081201273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Jul 2019 09:09:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51C76756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Jul 2019 09:09:57 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id s19so18646675lfb.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Jul 2019 02:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jlX64yVVCFn54SEvEeK+I+mMGXW/hUR2B/Swt8cC4Vk=;
	b=NjMlpdXuvnxmeXEkqbXspWwJLd9ZFFGMOmenLQCgqaZQ39Xlxx4pSs9bo56qWU/TZJ
	nBxarOXVknUSKUexu/mblYMpVM5ETF2eS9B2tIhdgiZYFfK3m4GEbz8QtsLrf2Y4z7wm
	tkmXLDQxVtdMWTEuboWO6fqCCgZ6l0IU8aqDAd8mqqjjldAXRK4FZ7bTbq9TmKN9+5DA
	pNs6eLb3xMKbSmFRqkgWQCLCoI+OGcOzt/o2g6BimUSFBQp176Hs6uRmyJMGidiKaCO5
	vL97IPcncjH93V99dPIJqNCPDfThlShzaSw5OcQ300ILfrerHDR2fef4yRaUtUuDmfgB
	1m2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jlX64yVVCFn54SEvEeK+I+mMGXW/hUR2B/Swt8cC4Vk=;
	b=PrAwczZSuotF5erCK6THHhuT0w7kZte31QMhvloMNJ8Z7qkJJaVR7kIe/R2x7oelD6
	DtvHrm0W2nwXMIvWYSp8kEdvl9PnAd42/PfUda5lK+1D0PG0xkhp4KjXDu1WccPyiVWi
	ZOH5qrKKjuD8jIvLYmmyr6297clbS39ewtVdif6JIDJVza12bsMbcHS/jMUHPY8Indxp
	MvXxAao0rfJv98WipHbV7Jt2SS4RjZ0Mf+V42y9QfNE8cJyrJD7112mx7zUTUw7ls0Ti
	gOphJBnMxT4kj6YO1PeT9aQ/Una6tgEVD1vi7JjfDVVyh8AZDhtGQIJChQEPUO7NOld9
	vXYQ==
X-Gm-Message-State: APjAAAWOkvQwEguNx600J24JUO89QZ+5/34ghd6XQCKC246vZyWCiBqV
	PPe4+rO9rbzG1PMhyAka9Z2GBKlaqVCpzA/RpXR6cw==
X-Google-Smtp-Source: APXvYqznW9JyQ5xb3/sl5OMMMAy55INVAr60jw1LLbApabt517GmMFV6wM41b4ReGw0zCNWeDyX7YpvM8qjcyHeBbyU=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr20366492lfu.141.1563440995746; 
	Thu, 18 Jul 2019 02:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
	<20190717092820.GA18953@kroah.com>
	<CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
In-Reply-To: <CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 18 Jul 2019 11:09:42 +0200
Message-ID: <CACRpkdZnKNRRZkXpNcA3QALBh3jXQSY6XQWDJ+VrCOvrhRGzaA@mail.gmail.com>
To: Greg KH <greg@kroah.com>, Kees Cook <keescook@chromium.org>, 
	Bjorn Helgaas <bhelgaas@google.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Wed, Jul 17, 2019 at 6:09 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Jul 17, 2019 at 11:28 AM Greg KH <greg@kroah.com> wrote:
> > On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:
>
> > > We could add an option to `git am` to save the Message-ID automatically.
> >
> > Kees already posted a simple git hook to add it to the message when
> > using `git am`.  I've been using it for a week or so already, works
> > wonderfully.
>
> I also picked Kees script and it works like a charm as long as
> you pick patches from a list that is stashed in lore.

On popular request:
https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006608.html

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
