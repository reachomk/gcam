.class final Lcom/android/camera/burst/editor/StackImageEditRequest;
.super Ljava/lang/Object;
.source "StackImageEditRequest.java"


# instance fields
.field private final burstFrameItem:Lcom/android/camera/data/BurstFrameItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/BurstFrameItem;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/burst/editor/StackImageEditRequest;->burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

    .line 21
    return-void
.end method


# virtual methods
.method public final createEditIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/burst/editor/StackImageEditRequest;->burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

    .line 31
    invoke-virtual {v1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/burst/editor/StackImageEditRequest;->burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

    .line 32
    invoke-virtual {v2}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/burst/editor/StackImageEditRequest;->burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

    return-object v0
.end method
