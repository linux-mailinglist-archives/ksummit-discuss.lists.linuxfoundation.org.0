Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDB46B53C
	for <lists@lfdr.de>; Wed, 17 Jul 2019 05:59:41 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4BDB5D3D;
	Wed, 17 Jul 2019 03:59:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 560398BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 03:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1B2E71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 03:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
	Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/Zb33GIYzCD8QqP5PcgOah+3LaEnwlENMRa1sbbjyvE=;
	b=V0BYDKHGViHX0MiXGi7Nk8VWe
	wD72D9fv8oE6gMNgL0AxY6pJFJ/TGRYdtOi8h2XAilaZf3Px9jZ/4uMJprTiw3ra/pwu5RAMUXkVb
	5NbBMogDQXEITah6p9LMZKpAc7QjBkP5g6Kt1VMyqttkQLtrcnJpjBWamTPcDWzQINNzAuSE7hOfr
	ejLecxwdlb7JCYLjH7sFWSnGYNKn+VrXMmVT0PMwi7htbwjVkWQmNWCp2sjoJSFF8dAZoW4N7JPuF
	pWRApDRF5gjeZTs2lQ0Br/zGwc7t10KF2/fu3jSTzBeGrAYOh59V1j9IJ1DyPy00Aoej67YlBFcb8
	QGNvHZ+UQ==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
	helo=[192.168.1.17])
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hnb6D-0007GD-U5; Wed, 17 Jul 2019 03:59:25 +0000
To: Thomas Gleixner <tglx@linutronix.de>, Olof Johansson <olof@lixom.net>
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
	<CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
	<alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <bf269ea7-6a9c-25db-5b97-958d9e15bddd@infradead.org>
Date: Tue, 16 Jul 2019 20:59:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
Content-Language: en-US
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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

On 7/16/19 3:27 PM, Thomas Gleixner wrote:
> On Tue, 16 Jul 2019, Olof Johansson wrote:
>> On Tue, Jul 16, 2019 at 2:16 PM Wolfram Sang <wsa@the-dreams.de> wrote:
>>>
>>>
>>>> Even if we agree on a set of new tags the usage will still be based on
>>>> individual interpretation, which brings us back to square one.
>>>
>>> I agree. New tags won't help us much.
>>>
>>>> So no, let's just accept that these things are subjective and apply common
>>>> sense to make the best use of them.
>>>
>>> I meanwhile do think, though, that for "best use" it will be helpful to
>>> add my Rev-by to my SoB when I really did a full review (and not just
>>> trusted other reviewers). To properly document the process of a patch.
>>
>> I don't see how this is bringing much value. You picked up the patch,
>> and if you did so without looking closely at it, the end result is the
>> same: You're likely to be on the line for dealing with issues.
>>
>> The only thing a "S-o-b" without "R-b" would bring is "It's not my
>> fault that stuff broke" -- but it still is since your name is on it,
>> and that's not something that adds value for the project as a whole.
> 
> Right, if you commit it then you are responsible for it. It does not matter
> whether you reviewed it yourself or relied on someone else review.

It's a bit amazing (and scary) that this is even being discussed (as though
it's unknown) after these many years.

-- 
~Randy
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
