.class final Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;
.super Ljava/lang/Object;
.source "PreviewContentTextureViewAdapterLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy;->onPreviewAreaChanged(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$listeners:Ljava/util/List;

.field private synthetic val$previewArea:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;->val$listeners:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;->val$previewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;->val$listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 360
    iget-object v2, p0, Lcom/android/camera/ui/PreviewContentTextureViewAdapterLegacy$1;->val$previewArea:Landroid/graphics/RectF;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method
