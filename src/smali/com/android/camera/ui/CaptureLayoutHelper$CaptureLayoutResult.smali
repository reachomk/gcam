.class public final Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;
.super Ljava/lang/Object;
.source "CaptureLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CaptureLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureLayoutResult"
.end annotation


# instance fields
.field public final bottomBarContent:Landroid/graphics/RectF;

.field public final bottomBarRect:Landroid/graphics/RectF;

.field public final burstChipHolderRect:Landroid/graphics/RectF;

.field public final paginatorRect:Landroid/graphics/RectF;

.field public final previewRect:Landroid/graphics/RectF;

.field public final uncoveredPreviewRect:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;IZZZ)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarRect:Landroid/graphics/RectF;

    .line 118
    iput-object p2, p0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarContent:Landroid/graphics/RectF;

    .line 120
    iput-object p4, p0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->previewRect:Landroid/graphics/RectF;

    .line 121
    iput-object p5, p0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->uncoveredPreviewRect:Landroid/graphics/RectF;

    .line 122
    iput-object p6, p0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->paginatorRect:Landroid/graphics/RectF;

    .line 123
    iput-object p7, p0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->burstChipHolderRect:Landroid/graphics/RectF;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;IZZZB)V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p11}, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;IZZZ)V

    return-void
.end method
