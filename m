Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 302712172D8
	for <lists@lfdr.de>; Tue,  7 Jul 2020 17:53:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C95D288238;
	Tue,  7 Jul 2020 15:53:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9MvuJJVRWNpw; Tue,  7 Jul 2020 15:53:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3BA38822A;
	Tue,  7 Jul 2020 15:53:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 782C3C016F;
	Tue,  7 Jul 2020 15:53:36 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12707C016F;
 Tue,  7 Jul 2020 15:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D34A88F75;
 Tue,  7 Jul 2020 15:53:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOG0woC-jheE; Tue,  7 Jul 2020 15:53:34 +0000 (UTC)
X-Greylist: delayed 00:19:48 by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6D118885E;
 Tue,  7 Jul 2020 15:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=u+eV/Vt9JPFkjgSC7N8EDNEv2OCJ2IDe/eB3wX/AnBs=; b=a30Zm0xlb5E85J1xhQac/tdmK8
 ZayXBB0v3stbD0fr8xoc1BLj3H3+1MHN+NYM2D9uVn6b2aKpWG8/dnu/YUJqif1+D3Oa085AyhfWa
 e133Q3MgF+Jas8moPItUFjdDZ9UUFA2gKIvhTmqgbVyPzHZu4B4+UqWUIOJJLpkgl4pJJgPFhIE8U
 h/6HI/jgPiiaJC2KQxV18tB9DgkC5OfaP3zh0Zt+lyvPzsMS1tA31zYXKjvWlbtIZpuJqG948a6LU
 natX/r8SiI/6kpCuc6Pfxs2hex6s/+zufLDJuE6eEHRdCG7VA0d/MEcX6l42quUbaVdrqN4JfIqDy
 KXpwncZA==;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jspbF-0005Iy-Pw; Tue, 07 Jul 2020 15:33:41 +0000
To: "Bird, Tim" <Tim.Bird@sony.com>, Steven Rostedt <rostedt@goodmis.org>,
 Mike Rapoport <rppt@linux.ibm.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
 <202007062234.A90F922DF@keescook> <20200707064921.GA9411@linux.ibm.com>
 <20200707093727.22aa39e2@oasis.local.home>
 <CY4PR13MB117519F548B125CB2F10F50FFD660@CY4PR13MB1175.namprd13.prod.outlook.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c4aec17f-3ac9-ce17-a131-b186a9b595dd@infradead.org>
Date: Tue, 7 Jul 2020 08:33:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR13MB117519F548B125CB2F10F50FFD660@CY4PR13MB1175.namprd13.prod.outlook.com>
Content-Language: en-US
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris Mason <clm@fb.clm>,
 LKML <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
 Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 7/7/20 8:24 AM, Bird, Tim wrote:
> 
> 
>> -----Original Message-----
>> From: Steven Rostedt
>>
>> On Tue, 7 Jul 2020 09:49:21 +0300
>> Mike Rapoport <rppt@linux.ibm.com> wrote:
>>
>>>> But that's all fine. The change is easy to do and is more descriptive
>>>> even if I can't find terms that don't collide with my internal grammar
>>>> checker. ;)
>>>
>>> How about yeslist and nolist? ;-)
>>
>> I was thinking good-list / bad-list.
>>
>> /me that has been doing a lot of git bisect lately...
> 
> I think it depends on the context.  I'd prefer a grammatically awkward verb that described
> the action more specifically, than a grammatically nicer generic term.  In other words,
> yes/no, good/bad don't mean that much to me, unless it's obvious from context
> what the effect will be.  With something like allow/deny, I have a pretty clear mental
> model of what the code is going to do.

That matches what I was about to say:
Just using yes/no does not tell someone what they are saying yes or no about.
It should be more descriptive, like allow/block.

-- 
~Randy

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
