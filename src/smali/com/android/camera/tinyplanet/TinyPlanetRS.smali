.class public final Lcom/android/camera/tinyplanet/TinyPlanetRS;
.super Ljava/lang/Object;
.source "TinyPlanetRS.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private rs:Landroid/support/v8/renderscript/RenderScript;

.field private tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "TinyPlanetRS"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->rs:Landroid/support/v8/renderscript/RenderScript;

    .line 23
    new-instance v0, Lcom/android/camera/rs/ScriptC_tinyplanet;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->rs:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    .line 24
    return-void
.end method


# virtual methods
.method public final process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V
    .locals 5

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 28
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->rs:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Sampler;->WRAP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_sampler(Landroid/support/v8/renderscript/Sampler;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->rs:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_inputImage(Landroid/support/v8/renderscript/Allocation;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_inputWidth(I)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_inputHeight(I)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_outputHalfWidth(F)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_outputHalfHeight(F)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_oneOverScale(F)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    invoke-virtual {v0, p4}, Lcom/android/camera/rs/ScriptC_tinyplanet;->set_angle(F)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->rs:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v0, p2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->tinyPlanet:Lcom/android/camera/rs/ScriptC_tinyplanet;

    invoke-virtual {v1, v0}, Lcom/android/camera/rs/ScriptC_tinyplanet;->forEach_process(Landroid/support/v8/renderscript/Allocation;)V

    .line 38
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 39
    sget-object v0, Lcom/android/camera/tinyplanet/TinyPlanetRS;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " TinyPlanet processed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
