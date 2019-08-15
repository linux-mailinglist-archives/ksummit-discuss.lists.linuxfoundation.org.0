Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 032388F4D1
	for <lists@lfdr.de>; Thu, 15 Aug 2019 21:39:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 88A551188;
	Thu, 15 Aug 2019 19:35:11 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 716F31094
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:48:11 +0000 (UTC)
X-Greylist: delayed 00:16:54 by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D3447CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:48:10 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa
	(TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.76)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1hyKWo-0003iV-Fc; Thu, 15 Aug 2019 18:31:14 +0000
Date: Thu, 15 Aug 2019 20:31:13 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <20190815183113.rtaevi3sdipdz5y2@wittgenstein>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
	<CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
	<201908151034.CC0F7BD84@keescook>
	<CALCETrV+tk9irkoRTQCk+Ve37kce3V+7M1rFWwoDD8YqZS3p7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALCETrV+tk9irkoRTQCk+Ve37kce3V+7M1rFWwoDD8YqZS3p7Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Thu, 15 Aug 2019 19:35:09 +0000
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp
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

On Thu, Aug 15, 2019 at 11:26:10AM -0700, Andy Lutomirski wrote:
> On Thu, Aug 15, 2019 at 10:48 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Wed, Aug 14, 2019 at 10:54:49AM -0700, Andy Lutomirski wrote:
> > > After thinking about this a bit more, I think that deferring the main
> > > seccomp filter invocation until arguments have been read is too
> > > problematic.  It has the ordering issues you're thinking of, but it
> > > also has unpleasant effects if one of the reads faults or if
> > > SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this
> >
> > Right, I was actually thinking of the trace/trap as being the race.
> >
> > > type of deeper inspection filter should just be a totally separate
> > > layer.  Once the main seccomp logic decides that a filterable syscall
> > > will be issued then, assuming that no -EFAULT happens, a totally
> > > different program should get run with access to arguments.  And there
> > > should be a way for the main program to know that the syscall nr in
> > > question is filterable on the running kernel.
> >
> > Right -- this is how I designed the original prototype: it was
> > effectively an LSM that was triggered by seccomp (since LSMs don't know
> > anything about syscalls -- their hooks are more generalized). So seccomp
> > would set a flag to make the LSM hook pay attention.
> >
> > Existing LSMs are system-owner defined, so really something like Landlock
> > is needed for a process-owned LSM to be defined. But I worry that LSM
> > hooks are still too "deep" in the kernel to have a process-oriented
> > filter author who is not a kernel developer make any sense of the
> > hooks. They're certainly oriented in a better position to gain the
> > intent of a filter. For example, if a filter says "you can't open(2)
> > /etc/foo", but it misses saying "you can't openat(2) /etc/foo", that's a
> > dumb exposure. The LSM hooks are positioned to say "you can't manipulate
> > /etc/foo through any means".
> >
> > So, I'm not entirely sure. It needs a clear design that chooses and
> > justifies the appropriate "depth" of filtering. And FWIW, the two most
> > frequent examples of argument parsing requests have been path-based
> > checking and network address checking. So any prototype needs to handle
> > these two cases sanely...
> >
> 
> But also clone() flag filtering, and new clone() proposals keep
> wanting to add structs.  And filtering bpf().  /me runs.

Yeah, I've mentioned clone3() in my initial mail. And it is not a
proposal anymore it's in mainline since the 5.3 merge window. So the
evil has been done. /me (sorry-not-sorry) ducks :)
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
