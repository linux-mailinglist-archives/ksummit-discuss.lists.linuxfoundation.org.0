Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1179B4EF
	for <lists@lfdr.de>; Fri, 23 Aug 2019 18:54:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D04941075;
	Fri, 23 Aug 2019 16:54:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1051ED38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:54:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D22967F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:54:12 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id s14so8740645qkm.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TvQPAh9BCyxCfyfhL/TXQ3x7MGAB3WFeEeBXFzgcDOQ=;
	b=BDPCd9yVu5HDPzhvAjIu8y2fytp+vU4gGVHyY8HmZf7XHTYOSZuwbEA0bqLaH/ZwaP
	lC1g2eE3x7CqoNsICsAS9w7P6Nid22kn6kN/fvwejiG/aEqHmVOmjX/RcwuOWNc5Qth/
	VnqCrTaETpTfIcD6CAq49bvuuuMNizLqEl8mY320q3DgaxvCCSP9gmdEI3XFIZd1A/dh
	OxNAZX+brDGxHCFtrHOBdYDeJ/HINFWH5lB/6Oqfuh8TE8zBbPexLck9MM+wuMvUBrWj
	EBQiD5qnOAMqumP4/FY3xrQcQxJDDFkdmUvz0fTzvtprKCKQe8VZyO7ZhaiNLJAvS4et
	aV2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=TvQPAh9BCyxCfyfhL/TXQ3x7MGAB3WFeEeBXFzgcDOQ=;
	b=r+RyqZrecHJKqJ11Fko3giKD2k5FX+7CH2uGPWcQDaUO5VEWNNd2+oxzI3BF+FTvTT
	3o0OTgCibJz8Zulk2CTTK+FsTsjoaACbeRgxBhCRfIZROqX+zp/Hu+J5O7suj66edFSn
	KsWBCVGfZnrQZa1iD+2k3qzIAoxbNLIhQKkZf+93et4KtD8eAQYpemADwYtMjSOh7CYr
	PDHZYei9pBrrnadHeeYQAynWS5gVZCPKnHVpK1LhPnp9OISLK3C0KX1AYYj7koNd5ITS
	MxXOjmlJBst5RZuocfAqMTbkFXGybasdChvhh/P7WtEkMo11QORaeROJr58JedVpgmMh
	HOaQ==
X-Gm-Message-State: APjAAAWzJZL72EWvtc/sKuf/mfyGNBoFD6gnpA+vCqswmswR6ZWr3Gup
	c0dqQDzzrJEogrFkAI8GMAEiMbF/eAwkigTkBcYe1w==
X-Google-Smtp-Source: APXvYqwSd6tDfQ5A1uaDPFjkPtqLJfO1H5GYpdkIorLfa+qMadEAf2NCBu2qEqsP2tdQkkB6VElQQYtmvrIVV47euRo=
X-Received: by 2002:a05:620a:15f4:: with SMTP id
	p20mr4569750qkm.303.1566579251484; 
	Fri, 23 Aug 2019 09:54:11 -0700 (PDT)
MIME-Version: 1.0
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
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
In-Reply-To: <CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
Date: Fri, 23 Aug 2019 12:54:00 -0400
Message-ID: <CAJWu+oo++AVx-xsQkVCscWLVQyExA7QUPX8AxyQ=RWFw3FrmiQ@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Barret Rhoden <brho@google.com>,
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
From: Joel Fernandes via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Joel Fernandes <joelaf@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Aug 23, 2019 at 12:45 PM Doug Anderson <dianders@chromium.org> wrote:
[snip]
> Sure, if a given patch in the series is totally wrong and I re-write
> it (but still want the re-write to be considered a new version of the
> previous patch) then I have to manually copy the Change-Id for a
> gerrit upload.  ...but I'd also be OK if people just get a new
> Change-Id in this case.

Sometimes it is not "totally wrong" but just "done in a different
away" and is a new series. This happens a lot since upstream
development can be evolutionary. So your v1 may look nothing like v2
and is a whole new series. Yet the history linking the 2 series is
important. And no amount of automated commit ID generation can link
them. This is the scenario I was talking about. I know the git hook
works, but sometimes the Change-Id has to be manually copied. That's
not automatable. May be we are slightly on different tracks, but this
is the scenario that would be useful to trace IMO.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
