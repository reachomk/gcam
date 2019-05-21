.class public Lcom/android/camera/ui/DetailsDialog;
.super Ljava/lang/Object;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;
    }
.end annotation


# instance fields
.field private final moduleId:I

.field private final requestAppForCamera:Z

.field private final settingScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 2014
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/DetailsDialog;-><init>(ILjava/lang/String;Z)V

    .line 2015
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2018
    iput p1, p0, Lcom/android/camera/ui/DetailsDialog;->moduleId:I

    .line 2019
    iput-object p2, p0, Lcom/android/camera/ui/DetailsDialog;->settingScope:Ljava/lang/String;

    .line 2020
    iput-boolean p3, p0, Lcom/android/camera/ui/DetailsDialog;->requestAppForCamera:Z

    .line 2021
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/android/camera/ui/DetailsDialog;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 36
    .line 37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040039

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 38
    new-instance v1, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x10302d2

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    const v2, 0x7f0a0067

    .line 43
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0068

    new-instance v2, Lcom/android/camera/ui/DetailsDialog$1;

    invoke-direct {v2}, Lcom/android/camera/ui/DetailsDialog$1;-><init>()V

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method private static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    sparse-switch p1, :sswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 278
    :sswitch_0
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :sswitch_1
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :sswitch_2
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :sswitch_3
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :sswitch_4
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :sswitch_5
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :sswitch_6
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :sswitch_7
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :sswitch_8
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :sswitch_9
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :sswitch_a
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :sswitch_b
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :sswitch_c
    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :sswitch_d
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :sswitch_e
    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :sswitch_f
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :sswitch_10
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :sswitch_11
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :sswitch_12
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public getModuleId()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/android/camera/ui/DetailsDialog;->moduleId:I

    return v0
.end method

.method public getScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog;->settingScope:Ljava/lang/String;

    return-object v0
.end method

.method public requestAppForCamera()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/android/camera/ui/DetailsDialog;->requestAppForCamera:Z

    return v0
.end method
