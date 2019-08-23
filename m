Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF279A47E
	for <lists@lfdr.de>; Fri, 23 Aug 2019 03:02:07 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 23FCF1108;
	Fri, 23 Aug 2019 01:01:55 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A0FE10F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:01:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B63627FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:01:51 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w11so4030322plp.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YmBAWRpXRX2UVharIxYZodDlALo9UL7iBRGl6DX8nm8=;
	b=TTyyq6Gl0Mxq0f3Hd9wIzX9zHsEbQGGHYwyXb2vl1hOWj6XvdaG5U9Wt5GjRa9xPG8
	y4nOWki4uOMfVgEji73iFPScvakGbHyEk2zuiz35qZhzz/RpcJXRNVmcbn4Dmt7bC77l
	XhE5pLa/XOmz9ZOrYXxNtJDVhzcMW219Y4MfQmeiIld8mxZGq2Et4Gq2c5KyV52HpKv4
	DpV5Jw9cuYSjUTMX0N7ifLGrR+5TFxbNoS8uRoLvoa6fXHIwOUxVrMgm5OGC0BhgYEfh
	ql9SkMrxFbuXYQCW78Nx2Bhb0XJVN+9lbYX6L3IpnPf6gwrh/gpBTuAyUfd5YicT8zww
	9l+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YmBAWRpXRX2UVharIxYZodDlALo9UL7iBRGl6DX8nm8=;
	b=AFJuebSsMU1frfRcWCOqR60AILNaaHe8EAEFHjbe+ibGscMYFCvhpmBaczdfKN12xw
	GUonYbDdkdg11cnjQoSS0Yrx5Oy3skI+WwGYoUSjm6AHfcBF9Oi6Y5DiMKO69QwxcshO
	ME4Fp7gb8FcqftTjSeELQSvVvC/kN8xQgGbfGzrtjoIHdnysD1pQ9/2dOB2t1acDQNa0
	pWn5HtylF0o87489zY47miK/klSqgTegt4DKf6RAA4s8WKArTEhe9aUigpKkNPGyb4DO
	gMCdxFcT1rXEsQ/M1xoZvH7qMgPg4H6KWTWu0wBCniziR3r5XzWmMvYTX9a6YAjpDHym
	5r4g==
X-Gm-Message-State: APjAAAULNjIhMPu3d/CYT2fvS8ZhS4td2/LtpsdHx6B8jpqigYPLRiUF
	1XJPaOYKvvulbqMoNWR79iE=
X-Google-Smtp-Source: APXvYqw8K75RWNIbJ1Jm5r3pUETsKzIBSOewQ+8B8tOuKjP6/Mmxs7OpaR7k4YfXE2/MKQAvLa7rwA==
X-Received: by 2002:a17:902:44c:: with SMTP id
	70mr1718869ple.225.1566522110924; 
	Thu, 22 Aug 2019 18:01:50 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
	by smtp.gmail.com with ESMTPSA id j6sm609700pfa.141.2019.08.22.18.01.48
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Aug 2019 18:01:48 -0700 (PDT)
Date: Thu, 22 Aug 2019 18:01:46 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190823010146.GB139536@dtor-ws>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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

On Thu, Aug 22, 2019 at 05:17:05PM -0700, Linus Torvalds wrote:
> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > The Linux kernel has always viewed these Change-Id tags as obnoxious
> > and useless spam.  Anyone who accidentally leaves a Change-Id in their
> > patch when posting to the mailing list is told to please re-post their
> > patch without the Change-Id.  In this email, I will attempt to argue
> > that the Linux kernel ought to relax this restriction and allow
> > (possibly even encourage) Change-Ids.
> 
> No.
> 
> Not without some ground rules.
> 
> > To begin with, let me make sure we're on the same page about what
> > Change-Ids are.  As I understand it:
> >
> > * A change ID is much alike a UUID.  It is locally generated on a
> > developer's computer and is (in theory) unique across the universe.
> 
> Completely irrelevant.
> 
> The point of an UUID is not just that it's unique, but THAT YOU CAN
> LOOK SOMETHING UP USING IT!
> 
> A "change ID" that I can't use to look anything up with is completely
> pointless and should be removed from kernel history.
> 
> But if you have something unique that is actually useful for looking
> things up, then by all means. But it needs to be useful for
> _everybody_.

It can be used by anybody. At the barest minimum, one can simply google
it and get results from emails sent to LKML and other lists. Maybe down
the road patchwork will learn to use it.

BTW, I am not sure if we want a patch ID or series ID that is stable
across patch series.

> 
> > * When a developer keeps the same Change-Id across two patches they
> > are making the assertion that the two patches are either the same or
> > should be treated as two versions of the same logical change.
> 
> .. and we have better ways to do that.
> 
> For example, we are actively encouraging things like message ID's
> (which are _also_ a form of locally generated UUID, they just are more
> than the silly purely numerical one).
> 
> That gives you the origin of something, but it also gives you the
> development history and context.

But not all of it, as when somebody posts v2, v3, v4 of the patch series
the emails will generate new message IDs, so we lose connection to the
old discussions. With new unique ID that is preserved for the entire
lifetime of patch series it is much easier to locate all relevant data.

Thanks.

-- 
Dmitry
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
