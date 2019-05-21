.class public final Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;
.super Ljava/lang/Object;
.source "RenderScriptTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blurStack:Lcom/google/android/apps/refocus/renderscript/BlurStack;

.field private renderScript:Landroid/support/v8/renderscript/RenderScript;

.field private rgbdImage:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "RenderScriptTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 66
    return-void
.end method


# virtual methods
.method public final applyRefocusFilter(Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;Lcom/google/android/apps/refocus/processing/ProgressCallback;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1100
    iget-object v2, p1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 1102
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepthTransform()Lcom/google/android/apps/refocus/image/DepthTransform;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->focalDepth:F

    iget v4, p1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->depthOfField:F

    iget v5, p1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->blurInfinity:F

    const/16 v6, 0x8

    .line 1101
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->createFromDepthTransform(Lcom/google/android/apps/refocus/image/DepthTransform;FFFI)Lcom/google/android/apps/refocus/renderscript/BlurStack;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->blurStack:Lcom/google/android/apps/refocus/renderscript/BlurStack;

    .line 1108
    iget-object v2, p1, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->rgbdImage:Landroid/graphics/Bitmap;

    .line 82
    new-instance v2, Lcom/google/android/apps/refocus/renderscript/f32/RefocusFilterF32;

    iget-object v3, p0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v2, v3}, Lcom/google/android/apps/refocus/renderscript/f32/RefocusFilterF32;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->rgbdImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->blurStack:Lcom/google/android/apps/refocus/renderscript/BlurStack;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/android/apps/refocus/renderscript/f32/RefocusFilterF32;->compute(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/renderscript/BlurStack;Lcom/google/android/apps/refocus/processing/ProgressCallback;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 86
    sub-long v0, v4, v0

    long-to-float v0, v0

    .line 87
    sget-object v1, Lcom/google/android/apps/refocus/renderscript/RenderScriptTask;->TAG:Ljava/lang/String;

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "applyRefocusFilter is finished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v2
.end method
