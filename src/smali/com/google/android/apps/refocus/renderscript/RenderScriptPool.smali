.class public final Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;
.super Ljava/lang/Object;
.source "RenderScriptPool.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static USE_RENDERSCRIPT_PROP:Ljava/lang/String;

.field private static USE_RENDERSCRIPT_PROP_ON:Ljava/lang/String;

.field private static renderScript:Landroid/support/v8/renderscript/RenderScript;

.field private static final usage:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->usage:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 21
    const-string v0, "camera.renderscript"

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->USE_RENDERSCRIPT_PROP:Ljava/lang/String;

    .line 22
    const-string v0, "1"

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->USE_RENDERSCRIPT_PROP_ON:Ljava/lang/String;

    .line 23
    const-string v0, "RenderScriptPool"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static acquire(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 30
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;-><init>(Landroid/content/ContentResolver;Lcom/android/camera/util/ApiHelper;)V

    .line 1055
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->USE_RENDERSCRIPT_PROP:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/util/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1056
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1058
    :goto_0
    if-eqz v1, :cond_1

    .line 1059
    sget-object v1, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->USE_RENDERSCRIPT_PROP_ON:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 32
    :goto_1
    if-nez v1, :cond_2

    .line 33
    sget-object v1, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->TAG:Ljava/lang/String;

    const-string v2, "RenderScript not configured"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_2
    return-object v0

    .line 1056
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->useRenderScript()Z

    move-result v1

    goto :goto_1

    .line 36
    :cond_2
    sget-object v1, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->usage:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_3

    .line 37
    sget-object v1, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->TAG:Ljava/lang/String;

    const-string v2, "RenderScript already used"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :cond_3
    sget-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    if-nez v0, :cond_4

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 45
    :cond_4
    sget-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->TAG:Ljava/lang/String;

    const-string v1, "RenderScript acquired"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->renderScript:Landroid/support/v8/renderscript/RenderScript;

    goto :goto_2
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/apps/refocus/renderscript/RenderScriptPool;->usage:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    return-void
.end method
