.class final Lcom/android/camera/storage/StorageDialogBuilderImpl;
.super Ljava/lang/Object;
.source "StorageDialogBuilderImpl.java"

# interfaces
.implements Lcom/android/camera/storage/StorageDialogBuilder;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "StorageDlgBldr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/storage/StorageSpaceChecker;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 37
    iput-object p3, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/StorageDialogBuilderImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/storage/StorageDialogBuilderImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static buildDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    return-object v0
.end method

.method private final getDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/storage/StorageDialogBuilderImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/storage/StorageDialogBuilderImpl$2;-><init>(Lcom/android/camera/storage/StorageDialogBuilderImpl;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method private final getMaxFileSizeDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 161
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
    return-object v0
.end method


# virtual methods
.method public final buildMaxDurationDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->getMaxFileSizeDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->buildDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final buildMaxFileSizeDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->getMaxFileSizeDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->buildDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final buildPhotoPreviewDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0217

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->getDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->buildDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final buildVideoPreviewDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->getDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->buildDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final buildVideoRecordingDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->getDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->buildDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final checkSpaceAndShowPreviewDialogIfNecessary(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl;->storageSpaceChecker:Lcom/android/camera/storage/StorageSpaceChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/StorageSpaceChecker;->checkSpace(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->buildPhotoPreviewDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;-><init>(Lcom/android/camera/storage/StorageDialogBuilderImpl;Landroid/app/AlertDialog;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 134
    return-object v0
.end method
