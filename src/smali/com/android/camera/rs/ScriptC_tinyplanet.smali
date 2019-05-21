.class public final Lcom/android/camera/rs/ScriptC_tinyplanet;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_tinyplanet.java"


# instance fields
.field private __U8_4:Landroid/support/v8/renderscript/Element;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3

    .prologue
    .line 34
    const-string v0, "tinyplanet"

    .line 36
    invoke-static {}, Lcom/android/camera/rs/tinyplanetBitCode;->getBitCode32()[B

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/android/camera/rs/tinyplanetBitCode;->getBitCode64()[B

    move-result-object v2

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 38
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    .line 39
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->SAMPLER(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    .line 40
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    .line 41
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    .line 42
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/rs/ScriptC_tinyplanet;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 43
    return-void
.end method


# virtual methods
.method public final forEach_process(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 181
    .line 1186
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/rs/ScriptC_tinyplanet;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/rs/ScriptC_tinyplanet;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 182
    return-void
.end method

.method public final declared-synchronized set_angle(F)V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_inputHeight(I)V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_inputImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_inputWidth(I)V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_oneOverScale(F)V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_outputHalfHeight(F)V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_outputHalfWidth(F)V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_sampler(Landroid/support/v8/renderscript/Sampler;)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
