Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 650E8ABDEE
	for <lists@lfdr.de>; Fri,  6 Sep 2019 18:44:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 936E41D71;
	Fri,  6 Sep 2019 16:43:55 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 060A01D65
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 16:43:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 55C137DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 16:43:52 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id l11so7266513wrx.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Sep 2019 09:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:content-transfer-encoding:mime-version:subject:date:references
	:to:in-reply-to:message-id;
	bh=b24vGlAdsMMctrMbT2mzIMeZuGrxnMlFhuUmYQvmCTk=;
	b=S6Vcc0LAxyKx0HHxuRKom5upqiCR/VNcg1EcHRVNFdZtInr5X+KEHpsYJtOSQYLwPY
	YCmAOCeLesXibi9vykR06F8LavYTFHYmoRP0Zp4F2JPjAQzvVEIF3+nAtvneMEMOqoES
	D3GYQFQrooEJCeSj8nx24CGBT++/d5YxwulVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=b24vGlAdsMMctrMbT2mzIMeZuGrxnMlFhuUmYQvmCTk=;
	b=QVT/fFI7cx0mQHBvQtBrvNTdt8XGjhPv00QQ484ezYaVi6Tud0+lonLv6CQRu3Q6Io
	IyHhsKX+96BeoEViudhm0DKc7CuHCsuckZ6f564ubR2wOV7UoQNKEYxl993y36BbY8Uo
	8nfJuqG1HnfbLtJBnNq3sVdjXX0Y/2G+dvxbu7gUMlMQaIFaUwlG+YEQRNdb3LLYVF8Q
	8cF+iY4xlfQn6ginON1CE6AIz5Qce1mc7uMpg8Lk/bl1ZsPWzmJ9vWdYvV2cYDAFMTuY
	Cx2JMZ+jzhlcDiJzPLHD5dwK2zr5Xlqxm1bc865jpEfHsh1bA7EExet97OxCC1yqOzo3
	375w==
X-Gm-Message-State: APjAAAW9mbcWWG6HrCfnOKVv5kFRhMER7JEL5KZot1hYCe8maFBWZbr4
	5K+wj0iFoOvuUnpWhtRwUORaIM3WpT2/S5x2
X-Google-Smtp-Source: APXvYqyxbDqWT4hbQIeVp25R2o8KL1q9r0mM+o6MrLWIw3GUUGEsiW2w8RIGLpzqbj/2Krab9FldcQ==
X-Received: by 2002:a05:6000:10cf:: with SMTP id
	b15mr6422588wrx.124.1567788230221; 
	Fri, 06 Sep 2019 09:43:50 -0700 (PDT)
Received: from [10.93.12.198] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
	by smtp.gmail.com with ESMTPSA id
	s26sm10591053wrs.63.2019.09.06.09.43.49
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Sep 2019 09:43:49 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 6 Sep 2019 12:43:43 -0400
References: <E24DF3AE-0595-4B9A-AE1C-9801A88BD5FF@labbott.name>
	<44D37D71-113E-40BA-81B8-5D8F0962C13A@labbott.name>
To: ksummit-discuss@lists.linuxfoundation.org
In-Reply-To: <44D37D71-113E-40BA-81B8-5D8F0962C13A@labbott.name>
Message-Id: <DEFE2196-85E1-475C-9651-8255F8D54C96@labbott.name>
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Call for nominations
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


> On Aug 28, 2019, at 1:47 PM, Laura Abbott <laura@labbott.name> wrote:
> 
> 
>> On Aug 9, 2019, at 2:24 AM, Laura Abbott <laura@labbott.name> wrote:
>> 
>> Hello everyone,
>> 
>> Friendly reminder that the TAB elections are coming soon:
>> 
>> The Linux Foundation Technical Advisory Board (TAB) serves as the
>> interface between the kernel development community and the Linux
>> Foundation. The TAB advises the Foundation on kernel-related matters,
>> helps member companies learn to work with the community, and works to
>> resolve community-related problems before they get out of hand.  We
>> also support the Code of Conduct committee in their mission.
>> 
>> The board has ten members, one of whom sits on the Linux Foundation
>> board of directors.
>> 
>> The election to select five TAB members will be held at the 2019 Kernel Summit
>> in Lisbon, Portugal September 9-11. As has been announced[2], we are moving to
>> an electronic voting system this year. Further details about the exact voting
>> procedures will be coming soon. Anyone is eligible to stand for election,
>> simply send your nomination to:
>> 
>> tech-board-discuss at lists.linux-foundation.org
>> 
>> With your nomination, please include a short candidate statement. This candidate
>> statement should focus on why you are running and what you hope to accomplish
>> on the TAB. We will be collecting these statements and making them publicly 
>> available.
>> 
>> The deadline for receiving nominations is 9am GMT+1 on September 9th (the first
>> day of Kernel Summit). Due to the use of electronic voting, this will be a hard
>> deadline!
>> 
>> Current TAB members, and their election year:
>> 
>> Jon Corbet		2017
>> Greg Kroah-Hartman	2017
>> Steven Rostedt		2017
>> Ted Tso			2017
>> Tim Bird		2017
>> 
>> Chris Mason		2018
>> Laura Abbott		2018
>> Olof Johansson		2018
>> Kees Cook		2018
>> Dan Williams		2018
>> 
>> The five slots from 2017 are all up for election.  As always, please
>> let us know if you have questions, and please do consider running.
>> 
>> Thanks,
>> Laura
>> 
>> [1] TAB members sit for a term of two years, and half of the board is
>> up for election every year. Five of the seats are up for election now.
>> The other five are halfway through their term and will be up for
>> election next year.
>> 
>> [2] https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html
> 
> Reminder to send in your candidate statements, you can see the
> current ones at 
> 
> https://docs.google.com/document/d/1E3_W1c-xJMx9o2PCnKiGt3vqs-mPh77yNO4GSqNipOQ
> 
> 

Final reminder, the deadline is Monday September 9th at  9am UTC+1
(that's 9am Lisbon time). Because we are doing electronic voting this is a hard deadline!

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
