.class public abstract Lcom/google/android/apps/refocus/renderscript/RefocusFilter;
.super Ljava/lang/Object;
.source "RefocusFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ScriptType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected renderScript:Landroid/support/v8/renderscript/RenderScript;

.field protected scriptC:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TScriptType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "RefocusFilter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 34
    return-void
.end method

.method private static getKernelRadius(ILcom/google/android/apps/refocus/renderscript/BlurStack;)I
    .locals 1

    .prologue
    .line 181
    .line 182
    invoke-virtual {p1, p0}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getDiskRadius(I)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->computeKernelRadiusFromDiskRadius(F)I

    move-result v0

    .line 183
    return v0
.end method


# virtual methods
.method public final compute(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/renderscript/BlurStack;Lcom/google/android/apps/refocus/processing/ProgressCallback;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getFocusLayer()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getLayerInfo(I)Lcom/google/android/apps/refocus/renderscript/LayerInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->initializeScriptAndBuffers(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/renderscript/LayerInfo;)V

    .line 1082
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumLayers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1083
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getFocusLayer()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 1085
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/apps/refocus/processing/ProgressCallback;->wasCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 59
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v2

    .line 74
    :goto_2
    return-object v0

    .line 1089
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getLayerInfo(I)Lcom/google/android/apps/refocus/renderscript/LayerInfo;

    move-result-object v4

    .line 1090
    invoke-virtual {p0, v4}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->setTargetLayer(Lcom/google/android/apps/refocus/renderscript/LayerInfo;)V

    .line 1095
    iget v4, v4, Lcom/google/android/apps/refocus/renderscript/LayerInfo;->backDepth:I

    invoke-static {v4, p2}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->getKernelRadius(ILcom/google/android/apps/refocus/renderscript/BlurStack;)I

    move-result v4

    .line 1096
    invoke-virtual {p0, v4}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->setBlendInfo(I)V

    .line 1099
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->setKernelData(ILcom/google/android/apps/refocus/renderscript/BlurStack;)V

    .line 1106
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->computeLayerMatteBehindFocalDepth()V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->filterLayerBehindFocalDepth()V

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->updateSharpImageUsingFuzzyImage()V

    .line 1119
    if-eqz p3, :cond_1

    .line 1121
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumLayers()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumLayers()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1120
    invoke-interface {p3, v4}, Lcom/google/android/apps/refocus/processing/ProgressCallback;->setProgress(F)V

    .line 1084
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1124
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1135
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getFocusLayer()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1136
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/google/android/apps/refocus/processing/ProgressCallback;->wasCancelled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    :goto_4
    if-nez v1, :cond_7

    move-object v0, v2

    .line 66
    goto :goto_2

    .line 1141
    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getLayerInfo(I)Lcom/google/android/apps/refocus/renderscript/LayerInfo;

    move-result-object v4

    .line 1142
    invoke-virtual {p0, v4}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->setTargetLayer(Lcom/google/android/apps/refocus/renderscript/LayerInfo;)V

    .line 1147
    iget v4, v4, Lcom/google/android/apps/refocus/renderscript/LayerInfo;->frontDepth:I

    invoke-static {v4, p2}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->getKernelRadius(ILcom/google/android/apps/refocus/renderscript/BlurStack;)I

    move-result v4

    .line 1148
    invoke-virtual {p0, v4}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->setBlendInfo(I)V

    .line 1151
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->setKernelData(ILcom/google/android/apps/refocus/renderscript/BlurStack;)V

    .line 1158
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->computeLayerMatteInFrontOfFocalDepth()V

    .line 1163
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->filterLayerInFrontOfFocalDepth()V

    .line 1165
    if-eqz p3, :cond_5

    .line 1167
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumLayers()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getFocusLayer()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    int-to-float v4, v4

    .line 1168
    invoke-virtual {p2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumLayers()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1166
    invoke-interface {p3, v4}, Lcom/google/android/apps/refocus/processing/ProgressCallback;->setProgress(F)V

    .line 1135
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1176
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->finalizeFuzzyImageUsingSharpImage()V

    move v1, v3

    .line 1177
    goto :goto_4

    .line 70
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->extractResultImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    .line 73
    sget-object v1, Lcom/google/android/apps/refocus/renderscript/RefocusFilter;->TAG:Ljava/lang/String;

    const-string v2, "filterAndBlendAllLayersUsingKernel is finished"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected abstract computeLayerMatteBehindFocalDepth()V
.end method

.method protected abstract computeLayerMatteInFrontOfFocalDepth()V
.end method

.method protected abstract extractResultImage()Landroid/graphics/Bitmap;
.end method

.method protected abstract filterLayerBehindFocalDepth()V
.end method

.method protected abstract filterLayerInFrontOfFocalDepth()V
.end method

.method protected abstract finalizeFuzzyImageUsingSharpImage()V
.end method

.method protected abstract initializeScriptAndBuffers(Landroid/graphics/Bitmap;Lcom/google/android/apps/refocus/renderscript/LayerInfo;)V
.end method

.method protected abstract setBlendInfo(I)V
.end method

.method protected abstract setKernelData(ILcom/google/android/apps/refocus/renderscript/BlurStack;)V
.end method

.method protected abstract setTargetLayer(Lcom/google/android/apps/refocus/renderscript/LayerInfo;)V
.end method

.method protected abstract updateSharpImageUsingFuzzyImage()V
.end method
