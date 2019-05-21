.class public final Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
.super Lcom/android/camera/processing/BlockSignalProtocol;
.source "ImageBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReleaseProtocol"
.end annotation


# instance fields
.field public final blockUntilRelease:Z

.field public final closeOnRelease:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/android/camera/processing/BlockSignalProtocol;-><init>()V

    .line 1169
    iput-boolean p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->blockUntilRelease:Z

    .line 1170
    iput-boolean p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->closeOnRelease:Z

    .line 1171
    return-void
.end method
