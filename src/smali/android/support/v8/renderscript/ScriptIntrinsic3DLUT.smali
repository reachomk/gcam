.class public Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsic3DLUT.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mElement:Landroid/support/v8/renderscript/Element;

.field private mLUT:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 37
    iput-object p4, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/support/v8/renderscript/Element;

    .line 38
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;
    .locals 4

    .prologue
    .line 51
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element must be compatible with uchar4."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 58
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v2

    .line 60
    new-instance v1, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;

    invoke-direct {v1, v2, v3, p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->setIncSupp(Z)V

    .line 62
    return-object v1

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 99
    return-void
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setLUT(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "LUT must be 3d."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "LUT element type must match."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/support/v8/renderscript/Allocation;

    .line 86
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 87
    return-void
.end method
