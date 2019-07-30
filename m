Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B81557AEDD
	for <lists@lfdr.de>; Tue, 30 Jul 2019 19:05:13 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D13A30D2;
	Tue, 30 Jul 2019 17:04:58 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0CB2C30C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 16:55:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 601955E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 16:55:11 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 83A32AC9B;
	Tue, 30 Jul 2019 16:55:09 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 8ED701E4370; Tue, 30 Jul 2019 18:55:07 +0200 (CEST)
Date: Tue, 30 Jul 2019 18:55:07 +0200
From: Jan Kara <jack@suse.cz>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20190730165507.GJ28829@quack2.suse.cz>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>, Trond Myklebust <trondmy@gmail.com>
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

On Wed 24-07-19 06:55:53, Jeff Layton wrote:
> On Wed, 2019-07-24 at 13:50 +0300, Amir Goldstein wrote:
> > On Wed, Jul 24, 2019 at 11:03 AM Sergey Senozhatsky
> > <sergey.senozhatsky.work@gmail.com> wrote:
> > > On (07/24/19 14:52), Sergey Senozhatsky wrote:
> > > > On (05/30/19 01:59), Theodore Ts'o wrote:
> > > > > From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
> > > [..]
> > > > To extend the topic with some discussion points:
> > > > 
> > > > - We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
> > > >   [1] is something what fsnotify normally does, except that we can't use
> > > >   it in cifsd kernel module. I see that NFS guys had [2] same issues some
> > > >   time ago.
> > > > 
> > > >   So the question is - how to do fs notify style monitoring in a kernel
> > > >   module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
> > > >   symbols?
> > 
> > I don't see a problem with exporting those symbols.
> > As a matter of fact, I have a plan to use them also from overlayfs.
> > At the time that Jeff posted his patches, there was no active fsnotify
> > maintainer.
> > Jeff, did you abandon this effort for nfsd?
> > 
> 
> (cc'ing Trond)
> 
> Trond has been driving those patches more recently. He posted a revised
> set of them recently, and they still use fsnotify to detect unlink
> activity:
> 
> https://www.spinics.net/lists/linux-nfs/msg73692.html

The fsnotify export bits look sane to me except perhaps
fsnotify_put_group() and fsnotify_wait_marks_destroyed(). Their usage in
"[PATCH 05/16] nfsd: add a new struct file caching facility to nfsd" looks
buggy AFAICT. One is supposed to destroy a group with
fsnotify_destroy_group() instead of just dropping the group reference (that
does just the final cleanup but expects fsnotify_destroy_group() has been
already called).

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
