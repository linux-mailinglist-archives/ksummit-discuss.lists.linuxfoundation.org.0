Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D857AC42CA
	for <lists@lfdr.de>; Tue,  1 Oct 2019 23:36:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 615D21E1C;
	Tue,  1 Oct 2019 21:33:34 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA64B1648
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Oct 2019 21:33:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 08F051FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Oct 2019 21:33:15 +0000 (UTC)
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1iFPlc-0001dI-M9; Tue, 01 Oct 2019 23:33:08 +0200
Received: from [178.197.248.57] (helo=pc-63.home)
	by sslproxy05.your-server.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <daniel@iogearbox.net>)
	id 1iFPlc-000QGf-EA; Tue, 01 Oct 2019 23:33:08 +0200
To: konstantin@linuxfoundation.org
References: <20190912120602.GC29277@pure.paranoia.local>
	<d6e8f49e93ece6f208e806ece2aa85b4971f3d17.1569152718.git.dvyukov@google.com>
	<610c62f2-f2e4-2eb1-3051-53c573194f52@iogearbox.net>
	<20190930212410.GE14403@pure.paranoia.local>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <a01ead7c-94ce-12ef-a043-6fd492c6c431@iogearbox.net>
Date: Tue, 1 Oct 2019 23:33:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190930212410.GE14403@pure.paranoia.local>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25589/Tue Oct  1 10:30:33 2019)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: robh@kernel.org, ksummit-discuss@lists.linuxfoundation.org,
	gregkh@linuxfoundation.org, Dmitry Vyukov <dvyukov@gmail.com>,
	helgaas@kernel.org, workflows@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, hch@lst.de, stefan@datenfreihafen.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On 9/30/19 11:24 PM, Konstantin Ryabitsev wrote:
> On Mon, Sep 23, 2019 at 02:52:01PM +0200, Daniel Borkmann wrote:
>>> Most (all) of the "kit" functionality should be separated from the UI
>>> and be available for scripting/automation/other UIs. Whether it's
>>> done as "libgit" or as "shell out" is discussable.
>> [...]
>> On that note, such a tool would also need to co-exist with the current
>> email based process for some (long?) time in order to allow a smooth
>> transition period. Last week I spent a few of nights hacking a small tool
>> which is regularly pulling the lore git trees I'm interested in and checking
>> out all [new] mails into maildir format so they can be read naturally by
>> UIs like mutt et al [0]. As an experiment, in case of bpf vger mailing list,
>> it extracts all current ~8k mails in under a second:
> 
> Thanks for working on this -- I've started on a similar tool in the
> past, but got distracted and never completed it. In my implementation,
> it was piping messages to procmail, which allowed writing complex rules
> for folders/pre-processing, etc. May I suggest that your tool also
> offers a stdout that can be piped to procmail?

I have a rough version working now. ;-) Just pushed to [0]. Let me know if that
does the trick on your side, I've added example configs for procmail to the repo
as well for getting started. Did a quick run for l2md -> procmail -> mutt and
seems fine as far as I can tell. (Patches always welcome of course.)

Thanks,
Daniel

   [0] https://git.kernel.org/pub/scm/linux/kernel/git/dborkman/l2md.git/
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
