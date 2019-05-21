.class public Landroid/support/v8/renderscript/ScriptC;
.super Landroid/support/v8/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    invoke-direct {p0, v2, v3, p1}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 59
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v0

    .line 60
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 61
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptC;->setID(J)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    invoke-direct {p0, v2, v3, p1}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 77
    sget v0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 78
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    .line 82
    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 83
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    invoke-static {p1, p2, p4}, Landroid/support/v8/renderscript/ScriptC;->internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptC;->setID(J)V

    .line 86
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 91
    const-class v4, Landroid/support/v8/renderscript/ScriptC;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 94
    const/16 v1, 0x400

    :try_start_1
    new-array v2, v1, [B

    move v3, v0

    .line 97
    :goto_0
    array-length v0, v2

    sub-int/2addr v0, v3

    .line 98
    if-nez v0, :cond_1

    .line 99
    array-length v0, v2

    shl-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    .line 100
    const/4 v0, 0x0

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v0, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    array-length v0, v1

    sub-int/2addr v0, v3

    .line 104
    :goto_1
    invoke-virtual {v5, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 105
    if-lez v0, :cond_0

    .line 108
    add-int/2addr v0, v3

    move v3, v0

    move-object v2, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    monitor-exit v4

    return-wide v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method private static declared-synchronized internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 4

    .prologue
    .line 127
    const-class v1, Landroid/support/v8/renderscript/ScriptC;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    array-length v2, p2

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
