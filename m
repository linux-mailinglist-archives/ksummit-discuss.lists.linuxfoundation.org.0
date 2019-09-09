Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 67792AD692
	for <lists@lfdr.de>; Mon,  9 Sep 2019 12:18:17 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DCD2AE97;
	Mon,  9 Sep 2019 10:18:05 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49AB7E7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:18:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A6EA381A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:18:02 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id h2so5645927ljk.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 03:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=z45gRKVDgWsaeKut5l5P4OJaAX+wjthsV8QrD2X5N2E=;
	b=f56+4Y3+OOlqTBgZS9m3I8coOklfctNMsihbZfhm3T/jGAVdb6kJfheqvxfNmkm3k9
	OFpGhJGBfU29CdR/3WJhMS9jjGMot8tKs9iXj+pfiiYia6lSR3V+Z4bOo01TO4GM0Cbz
	MRrpb66XNwspXqVWA1J37ujmPfjLgSnUAgOZwt+X90i6Memi34YNOipi6RyhuJGt+MJW
	PuP+Em4MouNgROI10YfJTeojm76rbWyWtcfbuvZuuz2kuQsk7JD+cxadIPI2TEwW/KTq
	+MNG/Uzla4v/bPavRCguDMumzXvTaM3pUB45OIEZW4L3DGb5UaQEL6UsxdCHxx38WwVD
	plTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=z45gRKVDgWsaeKut5l5P4OJaAX+wjthsV8QrD2X5N2E=;
	b=TsIBT0KjBSbel4BP174yvx9jJnzxImZZyfvmi7ZM/hAKP9kF8JfZMbzQ+sr0ZVd5pi
	HfAuSU77gLPRnGnsUWovR7DsyX8SbHIqPtpuuwPYSQHG5OfN+oLIKWmhdtQ5aDBP7Qkh
	RwI/VJDLxJF6YT9iBCuTPP6Bc8WBqm8NW4g2CuS3xUwhE85u0H4Rq+V2uNM0ZHWGu7WU
	tt5TVG/2R/IEMRSnzgdW58cGvCcjd3Bj3DQEbAKx6/c6ZWV/u/cwBENLvr4rudV2SNJa
	l/PetWjfcBCNcrfxXsrRfZUUX8ITULi0YUxOiytVHg5flUP/DyfnF+vA2azWOEadDkLm
	za9w==
X-Gm-Message-State: APjAAAU4eBwWXE4RuheJIbPGnDdv7S8criZ+NqVvWK+cIhClhO86R4Er
	fM4ri8haNhL6ZMCxE6Jq8FEWO6YHNfq/evUMG3IeesgY
X-Google-Smtp-Source: APXvYqzNR9M7okww7Ial3zlS9I0gQ+dZBpmRA8LEb4kFqIX6rTii42tp1tJMByFEsLtPCuffCfH8uicJJ9rTjADFZX4=
X-Received: by 2002:a2e:9147:: with SMTP id q7mr4698049ljg.95.1568024280772;
	Mon, 09 Sep 2019 03:18:00 -0700 (PDT)
MIME-Version: 1.0
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 9 Sep 2019 20:17:50 +1000
Message-ID: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] vague topic for maintainers summit
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

This topic occured to me on one of the planes I've spent time on this
weekend, so it's kinda vague and handwavy.

Methods for constructively saying No to large companies.

I feel it would be best suited for something like maintainer summit as
people can speak freely without causing employer issues.

The idea would be to exchange ideas and discuss how to address large
bodies of code or stacks that are misdesigned or have major issues
that aren't suitable for stable inclusion, or are big additions to
current drivers/layers, being submitted by large corporations with the
expectations that we would land it because they designed it like that.
I'm not sure if other maintainers face this sort of thing as regularly
as I do, but just wondered if there was value in discussing it.

Dave.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
