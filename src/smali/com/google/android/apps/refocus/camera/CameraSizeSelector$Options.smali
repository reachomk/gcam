.class public final Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;
.super Ljava/lang/Object;
.source "CameraSizeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/camera/CameraSizeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public enforceAspectRatio:Z

.field public idealAspectRatio:D

.field public idealPictureSizeMegaPixels:D

.field public maxPreviewRatio:D

.field public maxPreviewSize:D

.field public minPreviewRatio:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->idealPictureSizeMegaPixels:D

    .line 23
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->idealAspectRatio:D

    .line 24
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->minPreviewRatio:D

    .line 25
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->maxPreviewRatio:D

    .line 26
    const-wide/high16 v0, 0x4094000000000000L    # 1280.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->maxPreviewSize:D

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->enforceAspectRatio:Z

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->idealPictureSizeMegaPixels:D

    .line 23
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->idealAspectRatio:D

    .line 24
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->minPreviewRatio:D

    .line 25
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->maxPreviewRatio:D

    .line 26
    const-wide/high16 v0, 0x4094000000000000L    # 1280.0

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->maxPreviewSize:D

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->enforceAspectRatio:Z

    .line 37
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;->idealPictureSizeMegaPixels:D

    .line 38
    return-void
.end method
