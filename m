Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EC47B831
	for <lists@lfdr.de>; Wed, 31 Jul 2019 05:18:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 73232362E;
	Wed, 31 Jul 2019 03:18:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A1DB35ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Jul 2019 03:09:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B71A92C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Jul 2019 03:09:17 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id t16so30935780pfe.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 20:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/N4piBUHq3m7tOsB+FQc9ARPBzCL8abWTlYHxuHeel8=;
	b=r7aQCHSUgRq9ml/LG0za0PnFzLk9gB9Gb0pUmMqY0Ma8wXziyz3SS21r2nOzUu1HsQ
	MD3SuE21NYRzatT/3Z0ejQGT3RogX20Tq6AwmTVA7s3ewyW807MBghONsS2pfCn1D93n
	vJ53QLvPSFs9Ey/wKxQ/6GAJU4vAMW3wmtT730UZVyhshUGKH2DwiC9Oz7MrGw8Nsc/5
	dqkY1VVxpL60EuAQ6Xn5xYthmUqFa8mFtImCPa2/x0BLCdNBLX/SlHdPbFRK8Nq/vmF4
	rXY7PxuUksCvwZaWkvyTA6jlXRqze8JpzoBe+RkJGpCu6SxS5hOOU1JE3XvwQFlT35wF
	HQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/N4piBUHq3m7tOsB+FQc9ARPBzCL8abWTlYHxuHeel8=;
	b=ncKQBdIlYTxjL6fFvAd6uYqhipgri7PZzVgcY9qRKNSxDDBh9SvtDwUvGX4f2S+wDW
	DpmNFa2PqR8jORZ1PBFeQgWhpmTNFyK1SBMu1hkNpA/fuFzZOXWZAnYayRpi3VYsiu7W
	MbXQSpduKLae7la5YIOE5v08T4ckt5Y/YdiGrW3U+waGMt6Dbv2O1v7XmatkZ7BcVoCJ
	9MDou6MSD6siHufltdTL0FJ5nsmj3QxxLJb7jRvaFlS8/Ul+/vh3dja/j9fq/3Rvl3x7
	2KsoLuFvRXHQmjh21JB0slGCZphpAU3MVZWzQwMAMuGotP7NXmWeHUPem/U3MGS8Rov5
	Wptw==
X-Gm-Message-State: APjAAAVbDM44XIagBA4Xy378KbjIoG7G0PhuKfH2xBx6sllV19tm7dKS
	QgElWIPEd2m/RflfQwkpRRU=
X-Google-Smtp-Source: APXvYqyBsl5Lvda/w5by3rZDj0talF5JpeCu6wllTCldLVW3PNL6toMny2P0bLXTzjXL6zeHGOIBNw==
X-Received: by 2002:a17:90a:b104:: with SMTP id
	z4mr594622pjq.102.1564542557316; 
	Tue, 30 Jul 2019 20:09:17 -0700 (PDT)
Received: from localhost ([110.70.57.12]) by smtp.gmail.com with ESMTPSA id
	h16sm72565216pfo.34.2019.07.30.20.09.15
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 20:09:16 -0700 (PDT)
Date: Wed, 31 Jul 2019 12:09:13 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190731030913.GA5614@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
	<20190725050059.GA30226@jagdpanzerIV>
	<20190730170115.GK28829@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730170115.GK28829@quack2.suse.cz>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
	Trond Myklebust <trondmy@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
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

On (07/30/19 19:01), Jan Kara wrote:
> On Thu 25-07-19 14:00:59, Sergey Senozhatsky wrote:
> > On (07/24/19 06:55), Jeff Layton wrote:
> > > (cc'ing Trond)
> > > 
> > > Trond has been driving those patches more recently. He posted a revised
> > > set of them recently, and they still use fsnotify to detect unlink
> > > activity:
> > > 
> > > https://www.spinics.net/lists/linux-nfs/msg73692.html
> > 
> > Jan, do you have objections?
> > Would be great to have fsnotify export patch in linux-next, maybe.
> 
> I have no objections to export bits of fsnotify to modules. After all
> kernel/audit_tree.c is another external user of the fsnotify bits, just it
> happens not to be modularized so there was never need for exports.

That's great. At least we can expect that fsnotify will be exported
at some point and can start playing with fsnotify-based smb2_notify
implementation.

> Once NFS guys (or someone else) have something that is close to inclusion,
> I can push the export patch to my tree (just CC me, Amir, and fsdevel on the
> series).

OK, both OverlayFS and NFS have some plans for fsnotify, so let's see.

> I prefer not to export symbols for something that is out of tree
> and will not be getting upstream in a near future. After all the export
> patch is easy to carry in your tree if you need it.

Makes perfect sense.

	-ss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
