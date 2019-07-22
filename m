Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A81570656
	for <lists@lfdr.de>; Mon, 22 Jul 2019 19:03:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9CBDEE36;
	Mon, 22 Jul 2019 17:02:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBBCADD0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 17:02:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FD247F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 17:02:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c14so19399205plo.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 10:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=nUAQwUFTmAz6wknBIoJpLjBLI4JpM4VEvsUzDIkKr/o=;
	b=eXgLUjjesMcprFbqyevrLsQflTdAPC8+kxrZhqwcdgFxL+tRxmqYDCqMVFL1WU52+r
	fK4XPIqC+UbIobJpmv8u1ECOwUdRIyF9bJW9huw3V0ZyP95J+VxgJC9R4ovfkv7hQHPf
	f8GN04aGZguRhpoltlX0zlQvkc7RYzwZhaXLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=nUAQwUFTmAz6wknBIoJpLjBLI4JpM4VEvsUzDIkKr/o=;
	b=Lz00U4qrWGQmdlxbbhfMLIIEKuBmsf3T2wD6i3XmHC1wlSSYibuiAN8YEF4+c5DTx8
	9xrD3pppe+WzAXKBGNDzcxIrdr1VX144QiAXLgAtzgAT+9Qy/cdCD3qPOmEGyUYd/7YS
	M4IWmLk3t+ux2m/TDdoAAXyzka3zddA0RVrmGKZ0TnZE2cY8Y3bL8Bp3SYwdAAE6HZoz
	cMYdgYlqPdmdhQrQkO/X0qGAwgjhaz0plW8dLr5ccT++DWdQo+mssJTiBzHS7uoLku6b
	WMCsGUa89MOVvDv+6L1908Hk5U6uaJe3bVAtu0judDWNaXCPcSPcFVR7JRnCAiLvNseo
	YJRg==
X-Gm-Message-State: APjAAAUy510K1Lca5BJ6yKqGc0YC8YAqjGnw3f5IwtnK6JRnZmQcfwzB
	T1IjFjioqJGOZg8nSJiAnBnYsg==
X-Google-Smtp-Source: APXvYqwhNkZjflYGZcBrHyVaduiY6pNHHl/p2eaekOyC0REX+KwKM1L48AYC0DbrdA+G4LdVyJMzZA==
X-Received: by 2002:a17:902:6b02:: with SMTP id
	o2mr25814038plk.99.1563814956219; 
	Mon, 22 Jul 2019 10:02:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	65sm40514377pff.148.2019.07.22.10.02.34
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 22 Jul 2019 10:02:35 -0700 (PDT)
Date: Mon, 22 Jul 2019 10:02:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <201907221001.965A5D36A@keescook>
References: <alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
	<20190717092820.GA18953@kroah.com>
	<CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
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

On Wed, Jul 17, 2019 at 06:09:40PM +0200, Linus Walleij wrote:
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
> 
> Kees, you script is highly valuable, can we put it inside
> Documentation/* somewhere?

Yeah, absolutely! Do we already have somewhere to put these kinds of
maintainer scripts? (Has Dan Williams already thought about this for
the maintainer's handbook?)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
