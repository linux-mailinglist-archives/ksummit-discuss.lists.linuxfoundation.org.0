Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 142F19A5D7
	for <lists@lfdr.de>; Fri, 23 Aug 2019 04:58:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0C47212CA;
	Fri, 23 Aug 2019 02:58:27 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80705C9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 02:58:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3CF067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 02:58:23 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id x3so7453921lji.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 19:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux-foundation.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pllef4GKLkqE2N4p3HJ6vDldfHblww4CSUu4MylFyr8=;
	b=BJJ4wimlD6ra4CEEmDuq1MRSjF6nvS+2hTgzH/njXlGVhuewbBBLKKzfQ3DWpQUj/T
	Ra4zhiU+BrZSyOondm7Ru/bQtH8tpRB9zUpxC/n7snDK07IiAWkSwWF5Srsb9sGAJGYx
	bPgSqbbZFuNsbGMhdqzF/cagLyBrRS26Pkw98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pllef4GKLkqE2N4p3HJ6vDldfHblww4CSUu4MylFyr8=;
	b=UcxEEzTGcd4TXITL632bO0TzzMOBcRWdMzA0slNmZyLcHyhpprMxxj65LG0qRX2Tlq
	9vr6h07aQdLxA3CscE0oqYa9eiZsKV/n/msYPYoiwRrq+jUPpQR+xdXiFwL1pW8BuUCI
	8OjYFKbXyWHM2VT0BDnf5StorkpF7x6oo8lqqMMkRg8GWKYvI2ICkC7VhG0/uvFBHECI
	+jbrAYkr1RZ0EN6ZviS/a5oGcTG4jKUfCE3M65KHoNk6xPIRA2EDEktbMPUAfUzFIagW
	Uvh0m5aD5tTn0YytmNxKLz2SM8gv2jEdr/kgNkvZs0s4dPEILHH/VZSausLVb+8xHwuu
	+sPw==
X-Gm-Message-State: APjAAAXZcnZaOCYPfTCcg0W0v8e7G5MAG/Ack3Rpzq5bFADenJNsIXy7
	nahlLcWMYIKtfZmxOyE32SsdgNQsV+rgnw==
X-Google-Smtp-Source: APXvYqwT0NWHLWcxVPAWCret26AczQVzFkB7s1QhCPFNFK9u8iuFJdANAnXbkXCnqf23KaURqRAIWg==
X-Received: by 2002:a2e:3109:: with SMTP id x9mr1359291ljx.19.1566529100942;
	Thu, 22 Aug 2019 19:58:20 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
	[209.85.208.174])
	by smtp.gmail.com with ESMTPSA id f17sm360951lfa.67.2019.08.22.19.58.19
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 19:58:20 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id h15so7426060ljg.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 19:58:19 -0700 (PDT)
X-Received: by 2002:a2e:88c7:: with SMTP id a7mr1429591ljk.72.1566529099526;
	Thu, 22 Aug 2019 19:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
In-Reply-To: <20190823013619.GA8130@mit.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Aug 2019 19:58:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
Message-ID: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
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

On Thu, Aug 22, 2019 at 6:36 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> Surely it's obvious that:
>
> Link: https://linux-review.googlesource.com/c/1158
>
> is more useful than:
>
> Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384

Yes, I think that just using the link when you have a public-facing
gerrit database is perfectly fine already today, and people could
start using it.

Might that link some day die? Sure. That's fundamental to any external
link. I don't think it's all that productive to then argue whose links
are more likely to die before some other link, unless it looks like
some project is actively trying to game the system and has a pattern
of having links that are active only for a short while after the
commit has gone public.

And I don't see much point to doing that.

So yes, I'd *much* rather see that "Link" line than try to make a
"Change-ID" line be a thing.

Of course, looking at that particular link, my initial reaction is
"people are bad spellers". The word 'amend' has a single 'm' ;)

And it _is_ important that the link in question is stable, of course.
Some systems have problems with that. Is that "c/1158" actually a
stable long-lived name that will stay around as the thing is modified?
I don't know how that system works.

           Linus
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
