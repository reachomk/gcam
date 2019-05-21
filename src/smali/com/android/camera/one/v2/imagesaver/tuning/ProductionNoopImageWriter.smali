.class final Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;
.super Ljava/lang/Object;
.source "ProductionNoopImageWriter.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeAndCloseImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 25
    return-void
.end method
