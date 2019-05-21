.class public final Lcom/android/camera/silentfeedback/SilentFeedback;
.super Ljava/lang/Object;
.source "SilentFeedback.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "SilentFeedback"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/silentfeedback/SilentFeedback;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static buildFeedbackIntent(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 104
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedback;->TAG:Ljava/lang/String;

    const-string v2, "Building feedback intent."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-object v1

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    .line 115
    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_1
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_2
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    .line 125
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v9, "com.android.camera.silentfeedback.SilentFeedbackService"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 126
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 124
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v2, Lcom/android/camera/silentfeedback/SilentFeedback;->TAG:Ljava/lang/String;

    const-string v5, "Could not find our own package. This should never happen. Not sending crash info."

    invoke-static {v2, v5, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 129
    :cond_2
    if-nez v0, :cond_3

    .line 130
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedback;->TAG:Ljava/lang/String;

    const-string v2, "Could not find SilentFeedbackService, not sending crash info."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 134
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedback;->TAG:Ljava/lang/String;

    const-string v6, "Printing cleaned throwable."

    invoke-static {v0, v6}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v5, v0, v1}, Lcom/android/camera/silentfeedback/SilentFeedback;->printCleanedThrowableHelper(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 140
    aget-object v1, v4, v3

    .line 143
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_3
    const-string v3, "com.android.camera.silentfeedback.SilentFeedbackService.exceptionClass"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v3, "com.android.camera.silentfeedback.SilentFeedbackService.stackTrace"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "com.android.camera.silentfeedback.SilentFeedbackService.throwingClass"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v3, "com.android.camera.silentfeedback.SilentFeedbackService.throwingFile"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v0, "com.android.camera.silentfeedback.SilentFeedbackService.throwingLine"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v0, "com.android.camera.silentfeedback.SilentFeedbackService.throwingMethod"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    if-eqz p2, :cond_4

    .line 152
    const-string v0, "com.android.camera.silentfeedback.SilentFeedbackService.categoryTag"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    move-object v1, v2

    .line 154
    goto/16 :goto_0

    .line 143
    :cond_5
    const-string v0, "Unknown Source"

    goto :goto_3
.end method

.method private static printCleanedThrowableHelper(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 84
    const-string v5, "\n\tat "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 89
    const-string v5, "\nSuppressed: "

    invoke-static {v4, p1, p2, v5}, Lcom/android/camera/silentfeedback/SilentFeedback;->printCleanedThrowableHelper(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p3, "\nCaused by: "

    goto :goto_0

    .line 96
    :cond_3
    return-void
.end method

.method public static sendSilentFeedback(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/silentfeedback/SilentFeedback;->TAG:Ljava/lang/String;

    const-string v1, "Sending silent feedback."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/camera/silentfeedback/SilentFeedback;->buildFeedbackIntent(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    :cond_0
    return-void
.end method
