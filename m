Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D58D7A0BEF
	for <lists@lfdr.de>; Wed, 28 Aug 2019 23:00:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3FE223874;
	Wed, 28 Aug 2019 21:00:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC9A22EFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 21:00:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B816313A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 21:00:19 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id t6so2396962ios.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 14:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oClPUw0s4WSMP4See2mOrq7epRrT9LMmL0a+ToncRBM=;
	b=X7zi7BgU7xxHZjUO8IliX2Zo3qbdd9MnYIp5UskdCG3F9vF3nSAfstYq/1jFD4tsfA
	vMX8I4qbgW/y2JjmfUovvIummiBDEyx6q3sZEYaQyXPSmGxhEBzYDb/9COkkPZUtuam3
	6MikBkrATRx7QnwPHZWckvHaHp/b0gWawciE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oClPUw0s4WSMP4See2mOrq7epRrT9LMmL0a+ToncRBM=;
	b=iKrH76IbfDlhdFD+01gc2yDyOo7E5rqJH/KF4BcFCYQBPu8dqHs8Q6LP9crnzs/ANc
	rpKDSwh0nVHbAV2b7nfjc5P6blr2B77/BKsFoWXrBrM+qWjZvY8udt54gX5GSpMROLkj
	ZbFDW0nfStWVhgLLVkOf/p+ovg6vbQNL9ATbc5bXW0K6i+elAc144EQcui2J1MJ3MylU
	xVFTSzq3SCQxUb7KnZGnjEEObT008Ex9izZ/rl+XP9KciO4aZUZ12vyvOLQe564s5SH1
	1J53Xd2IQ9htQvQt1G6fXL/vV1p7hrJ0/lZNX5pI8BqyjJfs7vxMTgWRc1ZZTlFjB2aJ
	NdGw==
X-Gm-Message-State: APjAAAXt0XyPEpkCT+adiBPm/YyXZ4I+Elt/omI2RV6heDU+ERANURTw
	wVLUS2uNZLYOyZP2wliHoHm2nK0S0I4=
X-Google-Smtp-Source: APXvYqzxOBK1R1cbDfdd+ypK+QH8RA9M6DmnknFmmn10K3Gx92i48nbXjF5d+eNdVxR95SRsd/4MNg==
X-Received: by 2002:a5d:8f8a:: with SMTP id l10mr6767943iol.306.1567026018479; 
	Wed, 28 Aug 2019 14:00:18 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
	[209.85.166.45])
	by smtp.gmail.com with ESMTPSA id r78sm209683ior.48.2019.08.28.14.00.16
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 28 Aug 2019 14:00:17 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id q12so2439127iog.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 14:00:16 -0700 (PDT)
X-Received: by 2002:a6b:e013:: with SMTP id z19mr6945496iog.141.1567026016460; 
	Wed, 28 Aug 2019 14:00:16 -0700 (PDT)
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
	<ff8702f347eeabe77b42a6c645cf87d51221f133.camel@sipsolutions.net>
In-Reply-To: <ff8702f347eeabe77b42a6c645cf87d51221f133.camel@sipsolutions.net>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 28 Aug 2019 14:00:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xh39=T-v6J1fP6P2jdfSyUqMwKUKy9F266cB0OH8n+EQ@mail.gmail.com>
Message-ID: <CAD=FV=Xh39=T-v6J1fP6P2jdfSyUqMwKUKy9F266cB0OH8n+EQ@mail.gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
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

Hi,

On Wed, Aug 28, 2019 at 1:47 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> Hi Doug,
>
>
> > The actual Message-Id generated there was:
> >
> > 20190828132723.0.RFC.Ie6289f437ae533d7fcaddfcee9202f0e92c6b2b9@changeid
>
> When you post a patch with that type of message ID, why don't you
> already include a suitable archive Link: inside the patch posting?
>
> Then you don't have to rely on the maintainer to add the Link: tag when
> they apply the patch. Many (kernel) maintainers do now, and pre-adding
> the Link: tag means we maintainers should change our scripts to not
> duplicate the Link: tag, but if you have a predictable Message-Id and
> predictable archive then you ought to be able to already include link?

That might work, but a few issues:

1. I'd have to guess that the Link would be valid.  Until the patch is
posted the Link is certainly not valid, so I'm basically adding to the
patch something that says "I _think_ you'd be able to find this patch
with this link".  Seems a little sketchy.

2. The script would (presumably) want to look at where the patch was
mailed to and either generate different links or not generate a link
in some cases.  Last I checked (maybe fixed now?) some mailing lists
weren't archived on lore.kernel.org and not everyone CCs LKML.  If
nothing else the people using this script for posting patches to
U-Boot wouldn't want a Link to lore.kernel.org

3. The link is of limited usefulness until it lands in the kernel
tree, isn't it?  If you found the patch on the mailing list before it
lands then presumably you don't need a link to the patch itself.  A
link to previous versions could be useful, but I'm not trying to solve
that (I'm assuming that tooling would eventually be developed that
could use the Change-Id encoded in the Message-Id to help with this).

4. It feels like getting maintainers to add a "Link:" is a tractable
(even if difficult) problem.  There are a finite number of maintainers
that can be told to do this instead of an infinite number of
submitters.  Presumably maintainers already need to learn to add
"Link:" anyway since (even if I am surprised and lots of people adopt
my proposal) you'll never get 100% of submitters adding a "Link:" like
this.


-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
