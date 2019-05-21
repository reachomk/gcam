.class public Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;
.super Ljava/lang/Object;
.source "KernelDataForRenderScript.java"


# static fields
.field private static final MAX_KERNEL_RADIUS:I


# instance fields
.field protected kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

.field protected stackLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getMaxDiskRadius()F

    move-result v0

    .line 2057
    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 26
    sput v0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->MAX_KERNEL_RADIUS:I

    .line 25
    return-void
.end method

.method protected constructor <init>(ILcom/google/android/apps/refocus/renderscript/BlurStack;Landroid/support/v8/renderscript/RenderScript;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p2, p1}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumDepths(I)I

    move-result v2

    .line 74
    new-instance v1, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    invoke-direct {v1, p3, v2}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;-><init>(Landroid/support/v8/renderscript/RenderScript;I)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    move v1, v0

    .line 78
    :goto_0
    if-ge v0, v2, :cond_0

    .line 79
    invoke-virtual {p2, p1, v0}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getDepth(II)I

    move-result v3

    .line 80
    invoke-virtual {p2, v3}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getDiskRadius(I)F

    move-result v3

    .line 1057
    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    .line 83
    iget-object v4, p0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->set_offset(IIZ)V

    .line 84
    iget-object v4, p0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    invoke-virtual {v4, v0, v3, v5}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->set_radius_x(IIZ)V

    .line 85
    iget-object v4, p0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    invoke-virtual {v4, v0, v3, v5}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->set_radius_y(IIZ)V

    .line 87
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v4

    .line 88
    add-int/2addr v1, v3

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iput v1, p0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->stackLength:I

    .line 92
    return-void
.end method

.method public static computeKernelRadiusFromDiskRadius(F)I
    .locals 1

    .prologue
    .line 57
    float-to-int v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getMaxKernelRadius()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->MAX_KERNEL_RADIUS:I

    return v0
.end method


# virtual methods
.method public final getKernelInfo()Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;->kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    return-object v0
.end method
