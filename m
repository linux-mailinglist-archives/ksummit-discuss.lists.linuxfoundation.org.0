Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 681CCB73BA
	for <lists@lfdr.de>; Thu, 19 Sep 2019 09:09:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C248FDD4;
	Thu, 19 Sep 2019 07:09:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B6C67AB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 07:09:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A92C76D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 07:09:30 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8J78wLP105263; Thu, 19 Sep 2019 07:09:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
	h=date : from : to : cc
	: subject : message-id : references : mime-version : content-type :
	in-reply-to; s=corp-2019-08-05;
	bh=ftyCRpFwN+KpMYGA2UsFQaAal3rvYUjVRKG0h7Vp0HY=;
	b=eR2tIJqR1wLXUDwg48LJdMtBYwxn931nfCRXedima0iV7lB5uLP6kbmeXlkXpRKtx9Ly
	HUvLy6htD+7fjMyneNHN7IqgoLgpMHMqhXLv4Y3+6OKJrch71amLs678KkzkYIcjnPci
	wEP+gUvSXuKFiAmTQytiE8xTnzfF7JHoEEQa/eo1m3q1VlkZuPV+ty0VY8aYZglemvL+
	aqOlwvGGJtESb6+1GTKc+80WV2VnfiSvxtVMYsaF4eL0Sqnb+2kJ+TnjxxiHVf3ceawl
	cZjq0qousp/fBTscRQabisxg2vPWpFb91gix85Yx7PK0X/lGFFIlTfpExzCsenqil5ZI
	Ew== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2v3vb51t6p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Sep 2019 07:09:25 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8J79Ko1012015; Thu, 19 Sep 2019 07:09:25 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 2v3vb4xt2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Sep 2019 07:09:22 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8J792bD020840;
	Thu, 19 Sep 2019 07:09:02 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Sep 2019 00:09:02 -0700
Date: Thu, 19 Sep 2019 10:08:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190919070856.GG2959@kadam>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan>
	<20190918172705.GC4734@pendragon.ideasonboard.com>
	<20190918154831.3dd0d040@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918154831.3dd0d040@coco.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1908290000 definitions=main-1909190067
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
	definitions=main-1909190067
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
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

On Wed, Sep 18, 2019 at 03:48:31PM -0300, Mauro Carvalho Chehab wrote:
> Em Wed, 18 Sep 2019 20:27:05 +0300
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:
> 
> > > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > > I prefer not to be c/c, as this is just more noise, as I just rely on
> > > patchwork for media patches. What about changing this to:
> > > 
> > > 	Patches for the media subsystem should be sent to the media mailing list
> > > 	at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > 	HTML will be automatically rejected by the mail server. It could be wise 
> > > 	to also copy the sub-maintainer(s).  
> > 
> > That works for me. As this is really a personal preference, is there a
> > way it could be encoded in MAINTAINERS in a per-person fashion ?
> > Something that would allow you to opt-out from CC from linux-media (but
> > possibly opt-in for other parts of the kernel), and allow me to opt-in
> > for the drivers I maintain ?
> 
> I don't think so. Perhaps we could add, instead, something like that at the
> sub-maintainers section of the profile.

Of course there is a way to add yourself as a maintainer for a specific
.c file...  Maybe people feel like MAINTAINERS is too crowded?

We could update get_maintainer.pl to grep the .c files for a specific
tag instead of putting everything in a centralized MAINTAINERS file.
But it doesn't make sense to try store that information MY BRAIN!  I
can't remember anything from one minute to the next so I have no idea
who maintains media submodules...

regards,
dan carpenter

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
