Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F839B467
	for <lists@lfdr.de>; Fri, 23 Aug 2019 18:20:10 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F03171020;
	Fri, 23 Aug 2019 16:19:54 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D7FBFE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:19:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ACCE489B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:19:52 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id s11so828637pfe.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ojf0yeGV87+AzKDmHRMQ2RFqE90Mpv4NxUfuWRlRdTo=;
	b=IeBvBWflpq+AuajneDBcgoOp5DeD/WiRbaYvOoTCrpck1OXP/BSUpowHjO9Cgw7JJ6
	OpDMOuihMXLUZEbdZH4u0FmuLbYT3K29iK+2a0v/a5Ea8+aDYNhwet6g0r5CmgaoOOrb
	QeEdsEtGUxub7VaTaau6UuRgDDCYqxUF4XxBmVB3hpl34n0iMypc9VoSPDa60D2L3uih
	tU5bM1Lam5pgjvmMfapZNaXF192IT4hNpdWfuvsBYli47RRh4RSeJAY4w4ER2rUMw6E6
	6vmjzIWKRabuEQ70Vj9Wsdz70H3W5K29GvntTinAzp0kd2oLMjZRLrGTcWw4JtuWIicc
	uWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ojf0yeGV87+AzKDmHRMQ2RFqE90Mpv4NxUfuWRlRdTo=;
	b=uKwq0Um0slWqRE1ED9+byHKbmoABhADKHcVRgsHqrcA15syxuJWG2GpUShcivcAUa+
	YL6fJjWGBCX2qaCMM4bBLviYyBFFx2geMpEGceNo3oHsGGg/iJJ0kW4y61L/bUT3V4nS
	kDFWm7ZzFNljyCAa47wV2gavWoU5J1dRRfh1b8du+LYGU14hYeYt8hgWdGhNfXE1LGUI
	Fwxu16Brs0IXONkLnn3TCcg/QL7Cm/kaxWhJhEIw+dvq6qaWzNK8zQ5nlyS6+1NPBHyC
	KR0/eTYYTudEmlP60R5Ici7GnC1IKVXbpxp2VbfE5D/ryN5ucN/dleEPT2XIMxbtPrKY
	yncg==
X-Gm-Message-State: APjAAAWxz2FohDRTT/ItUJMk35ddMHZoZtmE03O5jWCFHdTch6bLNcTV
	CIz3c95ln4t6ZmEzATx1jkg=
X-Google-Smtp-Source: APXvYqwxgBMWXw7fZUsB+6b7pa16N63EKTCaJxUObTO/xWZUU6oeFZYXicE3LV9uLD4E+UKrt0sECA==
X-Received: by 2002:a63:221f:: with SMTP id i31mr4781134pgi.251.1566577191679; 
	Fri, 23 Aug 2019 09:19:51 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
	by smtp.gmail.com with ESMTPSA id
	d189sm4190289pfd.165.2019.08.23.09.19.49
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 23 Aug 2019 09:19:50 -0700 (PDT)
Date: Fri, 23 Aug 2019 09:19:47 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190823161947.GA112509@dtor-ws>
References: <CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
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

Hi Thomas,

On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> 
> Yes, it's work for the submitter, but it's always work if the submitter
> wants to have a proper trace.

Here is where I disagree with you. As a patch submitter, I frankly could
not care less about proper trace, history, etc. I might be putting cover
letter and outline the version changes, but I am doing that to reduce
friction and help committer to land my change. Thant's it. And
committers seem to have enough context from the provided version history
and memory of the previous iterations.

Who this new ID benefits most is a system integrator that is tracking
all bits and pieces that are needed for their board to boot and work
properly. Hopefully the system integrator is a good community citizen
and not only wants to apply patches locally, but also make sure
stragglers end up in mainline after all. But they need additional
history to know whether the series was just forgotten, a new solution
was adopted instead, and so on.

It also can help maintainers who need (maybe years later) to research
why particular change was made and whether there was additional
discussion around certain point of the change.

The process you outlined above (collecting msg ids from previous
submissions, putting them into cover letter, etc) adds too much friction
at submission time so that submitters will not actually do any of that.
However having a git hook adding an ID to any new commit is much more
workable.


Thanks.
 
-- 
Dmitry
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
