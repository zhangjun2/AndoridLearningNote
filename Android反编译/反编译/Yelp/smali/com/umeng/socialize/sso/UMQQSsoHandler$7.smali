.class Lcom/umeng/socialize/sso/UMQQSsoHandler$7;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sso/UMQQSsoHandler;->createUploadAuthListener(Lcom/umeng/socialize/media/UMImage;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

.field private final synthetic val$image:Lcom/umeng/socialize/media/UMImage;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/UMQQSsoHandler;Lcom/umeng/socialize/media/UMImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$7;->val$image:Lcom/umeng/socialize/media/UMImage;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/sso/UMQQSsoHandler$7;)Lcom/umeng/socialize/sso/UMQQSsoHandler;
    .locals 1
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    return-object v0
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 664
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4
    .parameter "value"
    .parameter "platform"

    .prologue
    .line 648
    if-eqz p1, :cond_0

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, uid:Ljava/lang/String;
    iget-object v1, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    iget-object v2, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$7;->val$image:Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Lcom/umeng/socialize/sso/UMQQSsoHandler$7$1;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/sso/UMQQSsoHandler$7$1;-><init>(Lcom/umeng/socialize/sso/UMQQSsoHandler$7;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/socialize/sso/UMQQSsoHandler;->getBitmapUrl(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;Lcom/umeng/socialize/sso/UMTencentSsoHandler$ObtainImageUrlListener;)V

    .line 660
    .end local v0           #uid:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "e"
    .parameter "platform"

    .prologue
    .line 644
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 640
    return-void
.end method
