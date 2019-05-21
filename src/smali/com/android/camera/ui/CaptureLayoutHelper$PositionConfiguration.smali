.class public final Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;
.super Ljava/lang/Object;
.source "CaptureLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CaptureLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionConfiguration"
.end annotation


# instance fields
.field public bottomBarOverlay:Z

.field public final bottomBarRect:Landroid/graphics/RectF;

.field public navigationBarDimension:I

.field public final previewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    .line 83
    iput-boolean v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 89
    iput v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->navigationBarDimension:I

    return-void
.end method
