Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3499B616
	for <lists@lfdr.de>; Fri, 23 Aug 2019 20:10:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 52CBDEE8;
	Fri, 23 Aug 2019 18:10:16 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD9FBEC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 18:10:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C4E5F67F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 18:10:12 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id k3so6163859pgb.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 11:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HOhnhU48UtkMsJswAqBTvi5/0M6O1/cBUvxKpViJqG0=;
	b=SFsh0c+As85hBgFsDPsfq7KCqdPKyEWvX/6s6EttFnhDj+DQejw/rTeP8oJ7ppX+I1
	y8fVVEzLQkQLOCylBY7PGFddxzLOsAQ2b2HmPDUS0mgOnHUEvwq2cBzpuAz7YFubSgSr
	Z47r57tB7aJxh07outlE9VQiKdbGuQUy3YuWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=HOhnhU48UtkMsJswAqBTvi5/0M6O1/cBUvxKpViJqG0=;
	b=mp1Hpk8DDDXAGi17Ooca525eyuy744GcSOTNP8qU7GafUtrbMB/evD43NTbzcxrhWk
	7v32odeIvDv0YhBqNKXpQ7Ravx+2ekxVk7fOd6I+8qkqM3PamSEqQdCIXESWZKi3Xnih
	yJvAtf8EPOnd7lauIlqnOdSslIfmKyyV154rRANc7JHZ/tokxJAPsQjuhWS2otfmbh+W
	gbj6kPNH3319Sy/FeoHOzSpCeWB3oPIOGN9IeA1YWP/vV9UCRp12Wl3AazH5hxuopAbV
	skyJ+FZnFtx5YWGDxTAQwl9HKL37a6dmmOtZqrFMcwxP4FgUFwwgEKWDG/YYFZc75WnF
	zuwQ==
X-Gm-Message-State: APjAAAXpVHvdUMkgMHbFx/wmCTH3hukQ7/ceEXynNI2cwKsudlvscjNK
	X2B95xieRbR1qfReU2synahDPxLs
X-Google-Smtp-Source: APXvYqw+SHPfpImN/8qgGrVfiGcJyTsulJhrdnaKqD4bGxnCKHDBi9r3azTIET4ZVX8Wp1x2fr853A==
X-Received: by 2002:a63:e44b:: with SMTP id i11mr4944040pgk.297.1566583812217; 
	Fri, 23 Aug 2019 11:10:12 -0700 (PDT)
Received: from pure.paranoia.local ([185.236.200.250])
	by smtp.gmail.com with ESMTPSA id e6sm3106703pfn.71.2019.08.23.11.10.09
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 23 Aug 2019 11:10:11 -0700 (PDT)
Date: Fri, 23 Aug 2019 14:10:06 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190823181006.GA5749@pure.paranoia.local>
Mail-Followup-To: Linus Torvalds <torvalds@linux-foundation.org>,
	"Theodore Y. Ts'o" <tytso@mit.edu>,
	Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>,
	Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Thu, Aug 22, 2019 at 08:03:51PM -0700, Linus Torvalds wrote:
> Tangential note: since it looks like "Link:" lines are going to get
> more common in general, maybe somebody with the right tck/tk-fu can
> make a tool like 'gitk' be able to just do the hyperlinking thing (it
> already does it for commit hashes in the commit message, but wouldn't
> it be convenient to do that for web links too and open a browser
> tab?).
> 
> And maybe we can even make git.kernel.org do it too (I think that uses cgit?).

Yes, we should be able to do this with a simple hook -- both for Link:
and Message-ID bits. I'll put it on my list.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
