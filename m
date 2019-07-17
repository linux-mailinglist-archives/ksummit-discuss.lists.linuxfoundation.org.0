Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 133466BF74
	for <lists@lfdr.de>; Wed, 17 Jul 2019 18:10:11 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D3175E71;
	Wed, 17 Jul 2019 16:09:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25AAEB7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:09:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 91E328A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:09:54 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id x25so24224600ljh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OzAB4AJPi4c1uiMLSiCnGLSr3O2caClk2A8+VFO28AI=;
	b=vWXg4ncgNe+N0mGgxuZuHphIjqeJp85TkL7RJWIAN8JRzzOn5ahjWqJQC7wd5mradr
	ufndP7XddxnVGVTmD0wpsUCSbxnIi56fDaAkyU9+QRhMSwvijm15crZPa+sKcjr3lpsU
	eJ525RQ08jhOwZNeg2VBRAwz++2oBaVwsBiWNLklU6OJ3elO/c/AhfPV2lHl2JAI0fic
	IonYac6RpkmOjr6mY8cI0UEzGuXa5kL75vZE/uXIC0ABY0PT5lXTfuRZLf3miC4qJIGX
	PlHKcGGrsfqiqikBQEWveTq4wQOWN/Qw0rVLd9g4bVON/3tOAhxMut/FvKQ25NiPnLbH
	ldig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OzAB4AJPi4c1uiMLSiCnGLSr3O2caClk2A8+VFO28AI=;
	b=CH828A+T0XFPYKWU6EvCOTRrnaoX8VRYgVIGQzLnfBGXSlFm3ysasM5P4Pa+OfM7i8
	WqMrgH+an0YQFz4dRfe3Odc+VClm+TJ1zxwVSrLJkofWF2DZQ1S24exvwLXL+yNpBqUL
	zlvPOeynVCjfS31iy37eR8M6pdZCh96DDmYF64k/p9UmW8TKgRftu9QRMDBvWzk2vpAQ
	2xo5uHpS1hJyw6KRpEAwSEsRZzjVnhyYAGYJn7Dq6aPLd1CY8YnWkGtn3PX8tqsIxqJh
	yMW8BPjRjzV6SFx7pyMNhR+LvwRSisahI0Wv+1j113b/CrJuObze14fQp3wqryTZZ+BU
	NBAg==
X-Gm-Message-State: APjAAAWc1mjvw37+DkRDC0/YBV8WVqFgFYs/0QwDWANIdWIub+R3t2E7
	mItW/fF3lDjEYww84q/LOIXVesDNR0E2oAgsRbYFfQ==
X-Google-Smtp-Source: APXvYqw8IJAmZndS1xKOcNN0cFmzNzczFdTlV2yAs+HUwmo9GK88av0UkbEnWBiNmFAT31wFh+ldWlwRArKU9JxD5m0=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr20406029ljg.62.1563379793059; 
	Wed, 17 Jul 2019 09:09:53 -0700 (PDT)
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
In-Reply-To: <20190717092820.GA18953@kroah.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Jul 2019 18:09:40 +0200
Message-ID: <CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
To: Greg KH <greg@kroah.com>, Kees Cook <keescook@chromium.org>
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

On Wed, Jul 17, 2019 at 11:28 AM Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:

> > We could add an option to `git am` to save the Message-ID automatically.
>
> Kees already posted a simple git hook to add it to the message when
> using `git am`.  I've been using it for a week or so already, works
> wonderfully.

I also picked Kees script and it works like a charm as long as
you pick patches from a list that is stashed in lore.

Kees, you script is highly valuable, can we put it inside
Documentation/* somewhere?

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
