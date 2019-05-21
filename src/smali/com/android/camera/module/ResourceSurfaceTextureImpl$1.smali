.class final Lcom/android/camera/module/ResourceSurfaceTextureImpl$1;
.super Ljava/lang/Object;
.source "ResourceSurfaceTextureImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/ResourceSurfaceTextureImpl;->setPreviewSize(Lcom/android/camera/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/ResourceSurfaceTextureImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/ResourceSurfaceTextureImpl;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl$1;->this$0:Lcom/android/camera/module/ResourceSurfaceTextureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl$1;->this$0:Lcom/android/camera/module/ResourceSurfaceTextureImpl;

    invoke-virtual {v0}, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->updatePreviewTransform()V

    .line 86
    return-void
.end method
