.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$Factory;
.super Ljava/lang/Object;
.source "AndroidImageWriterProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/Surface;I)Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;

    invoke-static {p1, p2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;-><init>(Landroid/media/ImageWriter;B)V

    return-object v0
.end method
