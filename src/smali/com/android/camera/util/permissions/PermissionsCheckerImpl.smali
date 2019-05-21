.class final Lcom/android/camera/util/permissions/PermissionsCheckerImpl;
.super Ljava/lang/Object;
.source "PermissionsCheckerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/util/permissions/PermissionsChecker;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnRequestPermissionsResult;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

.field private checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasCameraPermission:Z

.field private hasLocationPermission:Z

.field private hasMicrophonePermission:Z

.field private hasStorageReadPermission:Z

.field private hasStorageWritePermission:Z

.field private indexPermissionRequestCamera:I

.field private indexPermissionRequestLocation:I

.field private indexPermissionRequestMicrophone:I

.field private indexPermissionRequestStorage:I

.field private final intentStarter:Lcom/android/camera/util/activity/IntentStarter;

.field private final keyguardManager:Landroid/app/KeyguardManager;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private numPermissionsToRequest:I

.field private final permissionsRequestor:Lcom/android/camera/util/activity/PermissionsRequestor;

.field private final resources:Landroid/content/res/Resources;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "PermissionsChecker"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/settings/SettingsManager;Landroid/app/KeyguardManager;Lcom/android/camera/util/activity/PermissionsRequestor;Landroid/content/res/Resources;Lcom/android/camera/util/activity/IntentStarter;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$1;-><init>(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V

    iput-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activity:Landroid/app/Activity;

    .line 86
    iput-object p2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    .line 87
    iput-object p3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 88
    iput-object p4, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->keyguardManager:Landroid/app/KeyguardManager;

    .line 89
    iput-object p5, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->permissionsRequestor:Lcom/android/camera/util/activity/PermissionsRequestor;

    .line 90
    iput-object p6, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->resources:Landroid/content/res/Resources;

    .line 91
    iput-object p7, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->intentStarter:Lcom/android/camera/util/activity/IntentStarter;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    .line 93
    iput-object p8, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->failAndExit()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;IZ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->showDialogMainThread(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)Lcom/android/camera/util/activity/IntentStarter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->intentStarter:Lcom/android/camera/util/activity/IntentStarter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)Lcom/android/camera/util/activity/ActivityFinishWithReason;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    return-object v0
.end method

.method private final checkPermission(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPermissionResults([II)Z
    .locals 1

    .prologue
    .line 261
    aget v0, p0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final failAndExit()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activityFinishWithReason:Lcom/android/camera/util/activity/ActivityFinishWithReason;

    const-string v1, "Required camera permissions were not granted."

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/ActivityFinishWithReason;->finish(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private final hasSeenLocationDialog()Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_has_seen_permissions_dialogs"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final showDialog(IZ)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;-><init>(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;IZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method private final showDialogMainThread(IZ)V
    .locals 4

    .prologue
    const v3, 0x7f0a00ef

    .line 288
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 289
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->activity:Landroid/app/Activity;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0a008c

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->resources:Landroid/content/res/Resources;

    .line 292
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$3;-><init>(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    if-eqz p2, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->resources:Landroid/content/res/Resources;

    .line 307
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 329
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0a0175

    .line 311
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;

    invoke-direct {v2, p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;-><init>(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->resources:Landroid/content/res/Resources;

    .line 325
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public final checkCriticalPermissions()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 108
    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    .line 109
    sget-object v2, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->TAG:Ljava/lang/String;

    const-string v3, "Checking for critical permissions."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-nez v2, :cond_0

    .line 111
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 114
    :cond_0
    const-string v2, "android.permission.CAMERA"

    invoke-direct {p0, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    .line 115
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    .line 116
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    .line 117
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    .line 118
    invoke-direct {p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasSeenLocationDialog()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    iput-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    .line 122
    iget v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    .line 128
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    if-eqz v2, :cond_2

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 154
    :goto_1
    return-object v0

    .line 125
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    if-nez v0, :cond_4

    .line 1274
    :cond_3
    const v0, 0x7f0a0094

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->showDialog(IZ)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_1

    .line 148
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 2167
    :cond_5
    iget v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->numPermissionsToRequest:I

    new-array v2, v2, [Ljava/lang/String;

    .line 2170
    iget-boolean v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    if-nez v3, :cond_6

    .line 2171
    const-string v3, "android.permission.CAMERA"

    aput-object v3, v2, v0

    .line 2172
    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestCamera:I

    move v0, v1

    .line 2175
    :cond_6
    iget-boolean v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    if-nez v3, :cond_7

    .line 2176
    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v0

    .line 2177
    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestMicrophone:I

    .line 2178
    add-int/lit8 v0, v0, 0x1

    .line 2180
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    if-nez v3, :cond_8

    .line 2181
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v0

    .line 2182
    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestStorage:I

    .line 2183
    add-int/lit8 v0, v0, 0x1

    .line 2185
    :cond_8
    iget-boolean v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    if-nez v3, :cond_9

    .line 2186
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v0

    .line 2187
    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestStorage:I

    .line 2188
    add-int/lit8 v0, v0, 0x1

    .line 2190
    :cond_9
    iget-boolean v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasSeenLocationDialog()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2191
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v0

    .line 2192
    iput v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestLocation:I

    .line 2196
    :cond_a
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->permissionsRequestor:Lcom/android/camera/util/activity/PermissionsRequestor;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/util/activity/PermissionsRequestor;->requestPermissions([Ljava/lang/String;I)V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-ne p1, v1, :cond_1

    .line 213
    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p3

    if-nez v0, :cond_2

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkCriticalPermissions()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 219
    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    if-nez v0, :cond_3

    .line 220
    invoke-static {p3, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResults([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    .line 223
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    if-nez v0, :cond_4

    .line 224
    iget v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestMicrophone:I

    .line 225
    invoke-static {p3, v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResults([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    .line 228
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    if-nez v0, :cond_5

    .line 229
    iget v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestStorage:I

    .line 230
    invoke-static {p3, v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResults([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    .line 233
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    if-nez v0, :cond_6

    .line 234
    iget v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestStorage:I

    .line 235
    invoke-static {p3, v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResults([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    .line 240
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasSeenLocationDialog()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    if-nez v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_has_seen_permissions_dialogs"

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    iget v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->indexPermissionRequestLocation:I

    .line 244
    invoke-static {p3, v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResults([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    .line 245
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_recordlocation_key"

    iget-boolean v5, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasLocationPermission:Z

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 249
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasCameraPermission:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasMicrophonePermission:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageReadPermission:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->hasStorageWritePermission:Z

    if-eqz v0, :cond_9

    .line 2265
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->checkPermissionResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    move v0, v2

    .line 217
    goto :goto_1

    .line 2270
    :cond_9
    const v0, 0x7f0a0093

    invoke-direct {p0, v0, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->showDialog(IZ)V

    goto/16 :goto_0
.end method
